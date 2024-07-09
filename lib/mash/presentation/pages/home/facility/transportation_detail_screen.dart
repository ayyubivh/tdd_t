
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/manager/bloc/facilities_bloc/facilities_bloc.dart';
import 'package:mash/mash/presentation/manager/bloc/profile_bloc/profile_bloc.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/loader.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

class TransportationDetailScreen extends StatefulWidget {
  const TransportationDetailScreen({super.key});

  @override
  State<TransportationDetailScreen> createState() => _TransportationDetailScreenState();
}

class _TransportationDetailScreenState extends State<TransportationDetailScreen> {


  @override
  void initState() {
    final bloc = FacilitiesBloc.get(context);
    final profileBloc = ProfileBloc.get(context);
    var userDetails = profileBloc.state.getUserDetail?.data;
    final event = FacilitiesEvent.getTransportationDetail(studentId: userDetails?.usrId ?? '');
    bloc.add(event);
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: commonAppbar(title: 'Transportation Details'),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocBuilder<FacilitiesBloc, FacilitiesState>(
  builder: (context, state) {
    return state.getTransportationDetail.status == Status.LOADING ? const Loader() :Column(
            children: [
              Expanded(
                child: Card(
                  elevation: 4.0,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pickup Details',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16.0),

                        DetailRow(title: 'Pickup Place', value: state.getTransportationDetail.data?[0]?.pickupStop.toString() ?? ''),
                        DetailRow(title: 'Vehicle Number', value: state.getTransportationDetail.data?[0]?.pickupVehicle.toString() ?? ''),
                        DetailRow(title: 'Driver Name', value: state.getTransportationDetail.data?[0]?.driverName.toString() ?? ''),
                        DetailRow(title: 'Helper Name', value: state.getTransportationDetail.data?[0]?.helperName.toString() ?? ''),
                        DetailRow(title: 'Driver Mobile Number', value:state.getTransportationDetail.data?[0]?.driverMob.toString() ?? ''),
                        DetailRow(title: 'Helper Mobile Number', value: state.getTransportationDetail.data?[0]?.helperMob.toString() ?? ''),
                      ],
                    ),
                  ),
                ),
              ),
           spacer20,
              Expanded(
                child: Card(
                  elevation: 4.0,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dropoff Details',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        DetailRow(title: 'Dropoff Place', value: state.getTransportationDetail.data?[0]?.dropStop.toString() ?? ''),
                        DetailRow(title: 'Vehicle Number', value: state.getTransportationDetail.data?[0]?.dropVehicle.toString() ?? ''),
                        DetailRow(title: 'Driver Name', value: state.getTransportationDetail.data?[0]?.dropDriver.toString() ?? ''),
                        DetailRow(title: 'Helper Name', value: state.getTransportationDetail.data?[0]?.dropHelper.toString() ?? ''),
                        DetailRow(title: 'Driver Mobile Number', value: state.getTransportationDetail.data?[0]?.dropDriverMob.toString() ?? ''),
                        DetailRow(title: 'Helper Mobile Number', value: state.getTransportationDetail.data?[0]?.dropHelperMob.toString() ?? ''),
                      ],
                    ),
                  ),
                ),
              ),
              spacer20,
              Card(
                elevation: 10,
                child: Padding(padding: const EdgeInsets.all(16),
                  child:DetailRow(title: 'Total Kilometre', value:  "${state.getTransportationDetail.data?[0]?.totalKm} Km "?? ''),),
              ),
              spacer20
            ],
          );
  },
),
        ),
    );
  }
}

class DetailRow extends StatelessWidget {
  final String title;
  final String value;

  DetailRow({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(value),
        ],
      ),
    );
  }
}