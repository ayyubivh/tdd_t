import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/mash/presentation/manager/bloc/facilities_bloc/facilities_bloc.dart';
import 'package:mash/mash/presentation/pages/home/facility/widgets/common_button.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/shimmers/custom_shimmer_widget.dart';

import '../../../../../../core/response_classify.dart';
import '../../../../manager/bloc/profile_bloc/profile_bloc.dart';
import 'instalment_card_widget.dart';

class ShowInstalmentsDialogBox extends StatefulWidget {
  final String? subHeadId;


  const ShowInstalmentsDialogBox({super.key, required this.subHeadId});

  @override
  State<ShowInstalmentsDialogBox> createState() => _ShowInstalmentsDialogBoxState();
}

class _ShowInstalmentsDialogBoxState extends State<ShowInstalmentsDialogBox> {

  String? userId = '';
  @override
  void initState() {
    var userDetails = context
        .read<
        ProfileBloc>()
        .state
        .getUserDetail
        ?.data;
    BlocProvider.of<FacilitiesBloc>(context).add(FacilitiesEvent.getFacilityInstalments(
        subHeadId:
        widget.subHeadId ?? '',
        // studentId: 'MGS1000443'
        studentId: userDetails?.usrId ?? ''
    ));
    userId = userDetails?.usrId;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FacilitiesBloc, FacilitiesState>(
  builder: (context, state) {
    return StatefulBuilder(
      builder: (context,setState) {
        return Dialog(
          shape: RoundedRectangleBorder(
              side: BorderSide(width: 5, color: AppColors.grey700),
              borderRadius: BorderRadius.circular(25.0)),
          child:  SizedBox(
                height: SizeConfig.height(550),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    // Title and Close Button
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 20.0,vertical:5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(AppStrings.instalmentsDetails,
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600)),
                          IconButton(
                            // padding: EdgeInsets.all(10),
                            icon:  const Icon(CupertinoIcons.clear_circled_solid,size: 20,),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    ),
                    const Divider(height: 1),
                    // ListView.builder with two cards
                    Expanded(
                      child: state.getFacilityInstalments.data?.length == 0 ? HelperClasses.emptyDataWidget() :
                      ListView.builder(
                        itemCount: state.getFacilityInstalments.data?.length ?? 0,
                        itemBuilder: (BuildContext context, int index) {
                          return  state.getFacilityInstalments.status == Status.LOADING ? const CustomShimmerWidget(height: 80,borderRadius: 12,) :  Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4),
                            child: InstalmentCard(
                              title: state.getFacilityInstalments.data?[index]?.instalmentName ?? '',
                              amount: state.getFacilityInstalments.data?[index]?.amount ?? '',
                              validity: "${state.getFacilityInstalments
                                                .data?[index]?.startDate} - ${state.getFacilityInstalments
                                  .data?[index]?.endDate}",
                            ),
                          );
                        },
                      ),
                    ),
                    const Divider(height: 1),
                    // Cancel and Add Buttons
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CommonButton(onPress: () => Navigator.of(context).pop(), title: 'CANCEL', color: AppColors.greyClr100, isLoading: false, textColor: AppColors.primaryColor, isOutlined: true, progressColor: AppColors.primaryColor,)
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                              child: CommonButton(onPress: () {
                                 BlocProvider.of<FacilitiesBloc>(context).add(FacilitiesEvent.facilitySubUnSub(dropId: "0", pickUpId: "0", feeHeadId: '2', subHeadId: widget.subHeadId, unSubDate: '', studentId: userId, flag: '1'));
                                }, title: 'ADD', color: AppColors.primaryColor, isLoading: state.facilitySubUnSub.status == Status.LOADING, textColor: AppColors.white, isOutlined: true, progressColor: AppColors.white,)
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
        );
      }
    );
  }, listener: (BuildContext context, FacilitiesState state) {
      if(state.facilitySubUnSub.status == Status.COMPLETED){
        HelperClasses.showSnackBar(
            msg: state.facilitySubUnSub.data?.resTable?[0].message ?? '');
        context.pop();
      }
    },
);
  }
}
