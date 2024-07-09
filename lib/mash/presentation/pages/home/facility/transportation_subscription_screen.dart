import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/manager/bloc/facilities_bloc/facilities_bloc.dart';
import 'package:mash/mash/presentation/manager/bloc/profile_bloc/profile_bloc.dart';
import 'package:mash/mash/presentation/utils/helper_classes.dart';
import 'package:mash/mash/presentation/utils/size_config.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/drawer_widget.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_constants.dart';
import '../../../widgets/buttons/animted_button.dart';

class TransportationSubscriptionScreen extends StatefulWidget {
  final String? subheadId;

  const TransportationSubscriptionScreen({super.key, required this.subheadId});

  @override
  State<TransportationSubscriptionScreen> createState() =>
      _TransportationSubscriptionScreenState();
}

class _TransportationSubscriptionScreenState
    extends State<TransportationSubscriptionScreen> {
  final TextEditingController pickupController = TextEditingController();
  final TextEditingController dropOffController = TextEditingController();
  String? pickUpId = '';
  String? dropOffId = '';
  String? studentId = '';

  DateTime _selectedDate = DateTime.now();
  bool pickUp = false;
  bool dropOff = false;

  @override
  void initState() {
    super.initState();
    final profileBloc = ProfileBloc.get(context);
    // var userDetails = context.read<ProfileBloc>().state.getUserDetail?.data;
    var userDetails = profileBloc.state.getUserDetail?.data;
    prettyPrint('*********** print data ***********');
    prettyPrint(profileBloc.state.getUserDetail?.status.toString());
    prettyPrint(userDetails?.usrId);
    studentId = userDetails?.usrId;
    BlocProvider.of<FacilitiesBloc>(context).add(
        FacilitiesEvent.getFacilityStops(
            searchQuery: pickupController.text ?? ''));
  }

  /* void _openOptionsBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return SizedBox(
          height: SizeConfig.height(300),
          child: Column(
            children: [
              ListTile(
                title: const Text('Option 1'),
                onTap: () {
                  _optionController.text = 'Option 1';
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: const Text('Option 2'),
                onTap: () {
                  _optionController.text = 'Option 2';
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: const Text('Option 3'),
                onTap: () {
                  _optionController.text = 'Option 3';
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: const Text('Option 4'),
                onTap: () {
                  _optionController.text = 'Option 4';
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: const Text('Option 5'),
                onTap: () {
                  _optionController.text = 'Option 5';
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }*/

  @override
  void dispose() {
    pickupController.dispose();
    dropOffController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: 'Transportation'),
      endDrawer: const DrawerWidget(),
      body: tcRequestBody(context),
    );
  }

  tcRequestBody(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titles('Select Pickup Place'),
            selectPick(),
            pickUp ? pickDropDown() : Container(),
            titles('Select Drop Place'),
            selectDrop(),
            dropOff ? dropDown() : Container(),
            spacer30,
            applyButton(),
            spacer20,
            priceTitle(),
            spacer40,
            subscribeButton()
          ],
        ),
      ),
    );
  }

  titles(title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Text(
        title,
        style: TextStyle(
            fontSize: SizeConfig.textSize(17), fontWeight: FontWeight.w500),
      ),
    );
  }

  priceTitle() {
    return BlocBuilder<FacilitiesBloc, FacilitiesState>(
      builder: (context, state) {
        return Center(
          child: Text(
            '\u20B9 ${state.getFacilityAmount.data?[0]?.totalFeeAmount ?? '0'}',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: SizeConfig.textSize(35), fontWeight: FontWeight.w500),
          ),
        );
      },
    );
  }

  pickDropDown() {
    return BlocBuilder<FacilitiesBloc, FacilitiesState>(
      builder: (context, state) {
        if (state.getFacilityStops.data?.length == 0) {
          return Container();
        }
        return Expanded(
          child: ListView.builder(
            itemCount: state.getFacilityStops.data?.length ?? 0,
            itemBuilder: (context, index) {
              return ListTile(
                title:
                    Text(state.getFacilityStops.data![index]!.stops.toString()),
                onTap: () {
                  pickupController.text =
                      state.getFacilityStops.data![index]!.stops.toString();
                  setState(() {
                    pickUp = false;
                    pickUpId =
                        state.getFacilityStops.data![index]!.stopId.toString();
                  });
                  // context.read<FacilitiesBloc>().add(SuggestionEvent.selectSuggestion(state.filteredSuggestions[index]));
                },
              );
            },
          ),
        );
      },
    );
  }

  selectDrop() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
          elevation: 2,
          surfaceTintColor: AppColors.primaryColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 8,
            ),
            child: Stack(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        onChanged: (String) {
                          BlocProvider.of<FacilitiesBloc>(context).add(
                              FacilitiesEvent.getFacilityStops(
                                  searchQuery: String ?? ''));
                        },
                        onTap: () {
                          setState(() {
                            dropOff = true;
                          });
                        },
                        controller: dropOffController,
                        enabled: true,
                        style: TextStyle(color: AppColors.black),
                        decoration: const InputDecoration(
                          hintText: 'select a place',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down_circle,
                      color: AppColors.primaryColor,
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ],
            ),
          )),
    );
  }

  selectPick() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
          elevation: 2,
          surfaceTintColor: AppColors.primaryColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 8,
            ),
            child: Stack(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        onChanged: (String) {
                          BlocProvider.of<FacilitiesBloc>(context).add(
                              FacilitiesEvent.getFacilityStops(
                                  searchQuery: String ?? ''));
                        },
                        onTap: () {
                          setState(() {
                            pickUp = true;
                          });
                        },
                        controller: pickupController,
                        enabled: true,
                        style: TextStyle(color: AppColors.black),
                        decoration: const InputDecoration(
                          hintText: 'select a place',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down_circle,
                      color: AppColors.primaryColor,
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ],
            ),
          )),
    );
  }

  applyButton() {
    return BlocBuilder<FacilitiesBloc, FacilitiesState>(
      builder: (context, state) {
        return Center(
            child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 2,
              backgroundColor: AppColors.grey400,
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 2, color: AppColors.grey400),
                  borderRadius: BorderRadius.circular(25))),
          onPressed: () {
            pickUpId!.isEmpty || dropOffId!.isEmpty
                ? HelperClasses.showSnackBar(msg: 'Please Select Bus Stops!')
                : BlocProvider.of<FacilitiesBloc>(context).add(
                    FacilitiesEvent.getFacilityAmount(
                        pickUpId: pickUpId, dropOffId: dropOffId));
          },
          child: state.getFacilityAmount.status == Status.LOADING
              ? SizedBox(
                  height: 25,
                  width: 25,
                  child: CircularProgressIndicator(
                    color: AppColors.primaryColor,
                  ))
              : Text(
                  'Check Amount',
                  style: TextStyle(color: AppColors.primaryColor),
                ),
        ));
      },
    );
  }

  subscribeButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: BlocConsumer<FacilitiesBloc, FacilitiesState>(
        listener: (context, state) {
          if(state.facilitySubUnSub.status == Status.COMPLETED){
            HelperClasses.showSnackBar(
                msg: state.facilitySubUnSub.data?.resTable?[0].message ?? '');
            context.pop();
          }
        },
        builder: (context, state) {
           return AnimatedSharedButton(
              onTap: () {
                  pickUpId!.isEmpty || dropOffId!.isEmpty
                      ? HelperClasses.showSnackBar(
                      msg: 'Please Select Bus Stops!')
                      : BlocProvider.of<FacilitiesBloc>(context).add(
                      FacilitiesEvent.facilitySubUnSub(
                          dropId: dropOffId ?? '',
                          pickUpId: pickUpId ?? '',
                          feeHeadId: '',
                          subHeadId:  '10',
                          unSubDate: '',
                          studentId: studentId,
                          flag: '1'));
              },
              title: Text(
                'Subscribe',
                style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig.textSize(18)),
              ),
              isLoading: state.facilitySubUnSub.status == Status.LOADING);
        },
      )

    );
  }

  dropDown() {
    return BlocBuilder<FacilitiesBloc, FacilitiesState>(
      builder: (context, state) {
        if (state.getFacilityStops.data?.length == 0) {
          return Container();
        }
        return Expanded(
          child: ListView.builder(
            itemCount: state.getFacilityStops.data?.length ?? 0,
            itemBuilder: (context, index) {
              return ListTile(
                title:
                    Text(state.getFacilityStops.data![index]!.stops.toString()),
                onTap: () {
                  dropOffController.text =
                      state.getFacilityStops.data![index]!.stops.toString();
                  setState(() {
                    dropOff = false;
                    dropOffId =
                        state.getFacilityStops.data![index]!.stopId.toString();
                  });
                  // context.read<FacilitiesBloc>().add(SuggestionEvent.selectSuggestion(state.filteredSuggestions[index]));
                },
              );
            },
          ),
        );
      },
    );
  }
}
