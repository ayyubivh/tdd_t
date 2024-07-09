import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/di/injector.dart';
import 'package:mash/mash/domain/use_cases/auth/get_user_info_use_case.dart';
import 'package:mash/mash/presentation/manager/bloc/auth_bloc/auth_bloc.dart';
import 'package:mash/mash/presentation/manager/bloc/facilities_bloc/facilities_bloc.dart';
import 'package:mash/mash/presentation/pages/home/facility/widgets/common_button.dart';
import 'package:mash/mash/presentation/pages/home/facility/widgets/show_instalments_dialog_box.dart';
import 'package:mash/mash/presentation/pages/home/facility/widgets/subscribe_dialog_box.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/shimmers/custom_shimmer_widget.dart';

import '../../../../../core/response_classify.dart';
import '../../../manager/bloc/profile_bloc/profile_bloc.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_constants.dart';
import '../../../widgets/buttons/common_small_button.dart';

class FacilityMainScreen extends StatefulWidget {
  const FacilityMainScreen({super.key});

  @override
  State<FacilityMainScreen> createState() => _FacilityMainScreenState();
}

class _FacilityMainScreenState extends State<FacilityMainScreen> {
  TabController? _tabController;
  String studentId = '';
  String userType = '';

  final TextEditingController _dateController = TextEditingController();

  final ValueNotifier<DateTime> _selectedDate = ValueNotifier(DateTime.now());


  @override
  void initState() {
    final bloc = FacilitiesBloc.get(context);
    final loginDetail = BlocProvider.of<AuthBloc>(context).state;
    final profileBloc = ProfileBloc.get(context);
    var userDetails = profileBloc.state.getUserDetail?.data;
    prettyPrint('*********** print data ***********');
    prettyPrint(profileBloc.state.getUserDetail?.status.toString());
    prettyPrint(userDetails?.usrId);
    final event = FacilitiesEvent.getFacilityDashBoard(
      pTabId: '2',
      studentId: userDetails?.usrId ?? '',
    );
    bloc.add(event);
    studentId = userDetails?.usrId ?? '';
    userType = loginDetail.userDetails?.userType ?? '';
    prettyPrint("********** user type************");
    print(userType);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: commonAppbar(title: AppStrings.facility),
        body: SizedBox(
          height: size.height,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: HelperClasses.getSelectedStudent(context, true),
              ),
              SizedBox(
                child: TabBar(
                  controller: _tabController,
                  onTap: (index) {
                    var userDetails =
                        context.read<ProfileBloc>().state.getUserDetail?.data;
                    final bloc = BlocProvider.of<FacilitiesBloc>(context);
                    if (index == 0) {
                      bloc.add(FacilitiesEvent.getFacilityDashBoard(
                          pTabId: '2', studentId: userDetails?.usrId ?? ''));
                    } else if (index == 1) {
                      bloc.add(FacilitiesEvent.getFacilityDashBoard(
                          pTabId: '1', studentId: userDetails?.usrId ?? ''));
                    }
                  },
                  tabs: const [
                    Tab(text: AppStrings.explore),
                    Tab(text: AppStrings.active),
                  ],
                ),
              ),
              Expanded(
                child: BlocBuilder<FacilitiesBloc, FacilitiesState>(
                  builder: (context, state) {
                    return TabBarView(
                      children: [
                        Center(
                          child: state.getFacilityDashBoard.data?.length == 0
                              ? HelperClasses.emptyDataWidget()
                              : Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: ListView.separated(
                                          separatorBuilder: (context, index) {
                                            return spacer7;
                                          },
                                          itemCount: state.getFacilityDashBoard
                                                  .data?.length ??
                                              0,
                                          itemBuilder: (context, index) {
                                            return state.getFacilityDashBoard
                                                        .status ==
                                                    Status.LOADING
                                                ? const CustomShimmerWidget(
                                                    height: 80,
                                                    borderRadius: 12,
                                                  )
                                                : Container(
                                                    margin: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 15,
                                                        vertical: 5),
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.purple
                                                              .withOpacity(0.6),
                                                          blurRadius: 5.0,
                                                        ),
                                                      ],
                                                    ),
                                                    child: Theme(
                                                      data: Theme.of(context)
                                                          .copyWith(
                                                              dividerColor: Colors
                                                                  .transparent),
                                                      child: ExpansionTile(
                                                        expandedCrossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        title: Text(
                                                          state
                                                                  .getFacilityDashBoard
                                                                  .data?[index]
                                                                  ?.subheadName ??
                                                              '',
                                                          style:
                                                              const TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                        children: <Widget>[
                                                          const Text(
                                                            "${AppStrings.description} :",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 15),
                                                          ),
                                                          spacer7,
                                                          Text(
                                                            state
                                                                    .getFacilityDashBoard
                                                                    .data?[
                                                                        index]
                                                                    ?.description ??
                                                                '',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontSize: 15,
                                                                color: AppColors
                                                                    .greyText),
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: state
                                                                        .getFacilityDashBoard
                                                                        .data?[
                                                                            index]
                                                                        ?.subStatus ==
                                                                    '1'
                                                                ? Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                            .all(
                                                                            10),
                                                                    child: Text(
                                                                      'Awaiting Approval',
                                                                      style: TextStyle(
                                                                          color: AppColors
                                                                              .primaryColor,
                                                                          fontSize:
                                                                              16,
                                                                          fontWeight:
                                                                              FontWeight.w600),
                                                                    ))
                                                                : userType == '2' ? Container(): CommonButton(
                                                                    onPress: state.getFacilityDashBoard.data?[index]?.subHeadId ==
                                                                            '10'
                                                                        ? () => GoRouter.of(context).pushNamed(
                                                                            AppPages
                                                                                .transportationSubscribe,
                                                                            extra:
                                                                                state.getFacilityDashBoard.data?[index]?.feeSubheadId.toString())
                                                                        : () {
                                                                            var userDetails =
                                                                                context.read<ProfileBloc>().state.getUserDetail?.data;
                                                                            BlocProvider.of<FacilitiesBloc>(context).add(FacilitiesEvent.getFacilityInstalments(
                                                                                subHeadId: state.getFacilityDashBoard.data?[index]?.subHeadId ?? '',
                                                                                studentId: userDetails?.usrId ?? ''));
                                                                            showDialog(
                                                                              context: context,
                                                                              builder: (BuildContext context) {
                                                                                return ShowInstalmentsDialogBox(
                                                                                  subHeadId: state.getFacilityDashBoard.data?[index]?.subHeadId ?? '',
                                                                                );
                                                                                ();
                                                                              },
                                                                            );
                                                                          },
                                                                    // onPress: ()=> GoRouter.of(context).pushNamed(AppPages.paymentHistoryScreen),
                                                                    title: AppStrings
                                                                        .subscribe,
                                                                    color: AppColors
                                                                        .primaryColor,
                                                                    isLoading:
                                                                        false,
                                                                    textColor:
                                                                        AppColors
                                                                            .white,
                                                                    isOutlined:
                                                                        true,
                                                                    progressColor:
                                                                        AppColors
                                                                            .white,
                                                                  ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                          }),
                                    ),
                                  ],
                                ),
                        ),
                        Center(
                          child: state.getFacilityDashBoard.data?.length == 0
                              ? HelperClasses.emptyDataWidget()
                              : Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child:
                                          state.getFacilityDashBoard.data == 0
                                              ? HelperClasses.emptyDataWidget()
                                              : ListView.separated(
                                                  separatorBuilder:
                                                      (context, index) {
                                                    return spacer7;
                                                  },
                                                  itemCount: state
                                                          .getFacilityDashBoard
                                                          .data
                                                          ?.length ??
                                                      0,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return state.getFacilityDashBoard
                                                                .status ==
                                                            Status.LOADING
                                                        ? const CustomShimmerWidget(
                                                            height: 80,
                                                            borderRadius: 12,
                                                          )
                                                        : Container(
                                                            margin:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        15,
                                                                    vertical:
                                                                        5),
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(10),
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  color: Colors
                                                                      .purple
                                                                      .withOpacity(
                                                                          0.6),
                                                                  blurRadius:
                                                                      5.0,
                                                                ),
                                                              ],
                                                            ),
                                                            child: Theme(
                                                              data: Theme.of(
                                                                      context)
                                                                  .copyWith(
                                                                      dividerColor:
                                                                          Colors
                                                                              .transparent),
                                                              child:
                                                                  ExpansionTile(
                                                                expandedCrossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                title: Text(
                                                                  state
                                                                          .getFacilityDashBoard
                                                                          .data?[
                                                                              index]
                                                                          ?.subheadName ??
                                                                      '',
                                                                  style: const TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontSize:
                                                                          18),
                                                                ),
                                                                children: state
                                                                            .getFacilityDashBoard
                                                                            .data?[index]
                                                                            ?.feeSubheadId ==
                                                                        '10'
                                                                    ? <Widget>[
                                                                        const Text(
                                                                          "${AppStrings.description} :",
                                                                          style: TextStyle(
                                                                              fontWeight: FontWeight.w500,
                                                                              fontSize: 15),
                                                                        ),
                                                                        spacer7,
                                                                        Text(
                                                                          state.getFacilityDashBoard.data?[index]?.description ??
                                                                              '',
                                                                          style: TextStyle(
                                                                              fontWeight: FontWeight.w400,
                                                                              fontSize: 15,
                                                                              color: AppColors.greyText),
                                                                        ),
                                                                        spacer20,
                                                                        Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                          userType == '2' ? Container():CommonButton(
                                                                              onPress: ()=> GoRouter.of(context).pushNamed(AppPages.transportationStopChangeScreen,extra: state.getFacilityDashBoard.data?[index]?.feeSubheadId ?? ''),
                                                                              title: 'CHANGE STOP',
                                                                              color: AppColors.primaryColor,
                                                                              isLoading: false,
                                                                              textColor: AppColors.greyClr100,
                                                                              isOutlined: true,
                                                                              progressColor: AppColors.white,
                                                                            ),
                                                                            spacerWidth6,
                                                                            BlocConsumer<FacilitiesBloc,
                                                                                FacilitiesState>(
                                                                              listenWhen: (previous, current) =>
                                                                              previous.facilitySubUnSub.status != current.facilitySubUnSub.status,
                                                                              listener: (context, state) {
                                                                                if(state.facilitySubUnSub.status == Status.COMPLETED){
                                                                                  if (state.facilitySubUnSub.data?.resTable?[0].status == '1') {
                                                                                    HelperClasses.showSnackBar(msg: 'UnSubscribed Successfully');
                                                                                  } else if (state.facilitySubUnSub.data?.resTable?[0].status == '2') {
                                                                                    HelperClasses.showSnackBar(msg: 'Please wait for 15 days to apply');
                                                                                  } else if (state.facilitySubUnSub.data?.resTable?[0].status == '3') {
                                                                                    HelperClasses.showSnackBar(msg: "Waiting for approval!");
                                                                                  } else {
                                                                                    HelperClasses.showSnackBar(msg: 'Please try again');
                                                                                  }
                                                                                }
                                                                              },
                                                                              builder: (context, state) {
                                                                                return userType == '2' ? Container() : CommonButton(
                                                                                  onPress: () {
                                                                                    final datas = state.getFacilityDashBoard.data?[index];
                                                                                    HelperClasses.showDialogWithButtonCancelAndAdd(
                                                                                        context: context,
                                                                                        onAddPress:() {
                                                                                              if(_dateController.text.isEmpty){
                                                                                                HelperClasses.showSnackBar(msg: 'Please select date to apply');
                                                                                              }else{
                                                                                                if(state.facilitySubUnSub.status != Status.LOADING){
                                                                                                  context.pop();
                                                                                                  BlocProvider.of<FacilitiesBloc>(context).add(FacilitiesEvent.facilitySubUnSub(flag: "2",dropId: datas?.dropId ?? '0', pickUpId: datas?.pickUpId ?? '0', feeHeadId: datas?.feeHeadId ?? '', subHeadId: datas?.feeSubheadId ?? '', unSubDate: DateFormat('dd-MM-yyyy').format(_selectedDate.value), studentId: studentId));
                                                                                                }
                                                                                              }
                                                                                              },
                                                                                        dialogTitle: 'Are you sure you want to unsubscribe the' + " ${state.getFacilityDashBoard.data?[index]?.subheadName ?? ''} ?",
                                                                                        dialogWidget: _dateSelection(_dateController));

                                                                                  },
                                                                                  title: 'UNSUBSCRIBE',
                                                                                  color: AppColors.greyClr100,
                                                                                  isLoading: false,
                                                                                  textColor: AppColors.primaryColor,
                                                                                  isOutlined: true,
                                                                                  progressColor: AppColors.primaryColor,
                                                                                );
                                                                              },
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        spacer20,
                                                                        Divider(
                                                                          height:
                                                                              2,
                                                                          color:
                                                                              AppColors.grey200,
                                                                        ),
                                                                        spacer20,
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            child: CommonButton(
                                                                              onPress: () {
                                                                                GoRouter.of(context).pushNamed(AppPages.transportationDetailScreen);
                                                                              },
                                                                              title: 'VIEW DETAILS',
                                                                              color: AppColors.purple200,
                                                                              isLoading: false,
                                                                              textColor: AppColors.white,
                                                                              isOutlined: true,
                                                                              progressColor: AppColors.white,
                                                                            )),
                                                                      ]
                                                                    : <Widget>[
                                                                        const Text(
                                                                          "${AppStrings.description} :",
                                                                          style: TextStyle(
                                                                              fontWeight: FontWeight.w500,
                                                                              fontSize: 15),
                                                                        ),
                                                                        spacer7,
                                                                        Align(
                                                                          alignment: Alignment.centerRight,
                                                                         child: userType == '2'? Container():CommonButton(
                                                                           onPress:
                                                                               () {
                                                                                 final datas = state.getFacilityDashBoard.data?[index];
                                                                                 HelperClasses.showDialogWithButtonCancelAndAdd(
                                                                                     context: context,
                                                                                     onAddPress:() {
                                                                                       if(_dateController.text.isEmpty){
                                                                                         HelperClasses.showSnackBar(msg: 'Please select date to apply');
                                                                                       }else{
                                                                                         if(state.facilitySubUnSub.status != Status.LOADING){
                                                                                           BlocProvider.of<FacilitiesBloc>(context).add(FacilitiesEvent.facilitySubUnSub(dropId:'0', pickUpId: '0', feeHeadId: datas?.feeHeadId ?? '', subHeadId: datas?.feeSubheadId ?? '', unSubDate: DateFormat('dd-MM-yyyy').format(_selectedDate.value), studentId: studentId, flag: '2'));
                                                                                           context.pop();
                                                                                          _dateController.clear();
                                                                                         }
                                                                                       }
                                                                                     },
                                                                                     dialogTitle: 'Are you sure you want to unsubscribe the' + " ${state.getFacilityDashBoard.data?[index]?.subheadName ?? ''} ?",
                                                                                     dialogWidget: _dateSelection(_dateController));
                                                                               },
                                                                           title:
                                                                           'UNSUBSCRIBE',
                                                                           color:
                                                                           AppColors.greyClr100,
                                                                           isLoading:
                                                                           false,
                                                                           textColor:
                                                                           AppColors.primaryColor,
                                                                           isOutlined:
                                                                           true,
                                                                           progressColor:
                                                                           AppColors.primaryColor,
                                                                         ),
                                                                        ),

                                                                      ],
                                                              ),
                                                            ),
                                                          );
                                                  }),
                                    ),
                                  ],
                                ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _dateSelection(controller) {
    return GestureDetector(
      onTap: () => _selectDate(context),
      child: Container(
        width: double.infinity,
        // padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Card(
          elevation: 2,
          surfaceTintColor: AppColors.primaryColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: controller,
                    enabled: false,
                    style: TextStyle(color: AppColors.black),
                    decoration: const InputDecoration(
                      hintText: 'Select a date',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Icon(
                  Icons.edit_calendar,
                  color: AppColors.primaryColor,
                ),
                const SizedBox(width: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate.value,
      firstDate: DateTime(1900),
      lastDate: DateTime(2050),
    );
    if (picked != null && picked != _selectedDate.value) {
      _selectedDate.value = picked;
      _dateController.text = "${picked.toLocal()}".split(' ')[0];
    }
  }
}
