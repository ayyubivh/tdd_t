import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';

import '../../domain/entities/vehicle_tracker/geo_code_points.dart';

Future<List<Polyline>> drawPolyLines(List<LatLng> latLen) async {
  Response? response;
  List<Polyline> polylin = [];

  String origin = "${latLen.first.latitude},${latLen.first.longitude}";
  String destination = "${latLen.last.latitude},${latLen.last.longitude}";

  //&waypoints=${formatLatLngList(latLen)}
  String url =
      "https://maps.googleapis.com/maps/api/directions/json?key=${AppConstants.googleMapKey}&origin=$origin&destination=$destination&mode=driving";
  prettyPrint(url);
  try {
    response = await Dio().post(url);
    PolylineBetweenModel pResponse =
        PolylineBetweenModel.fromJson(response.data);

    PolylineId id = PolylineId(DateTime.now().microsecond.toString());
    for (int i = 0; i < (pResponse.routes[0].legs).length; i++) {
      for (int j = 0; j < pResponse.routes[0].legs[i].steps.length; j++) {
        final Polyline polyline = Polyline(
          polylineId:
              PolylineId(pResponse.routes[0].legs[i].steps[j].polyline.points),
          width: 2,
          color: Colors.blue,
          startCap: Cap.roundCap,
          endCap: Cap.buttCap,
          points: [
            LatLng(
                pResponse.routes[0].legs[i].steps[j].startLocation.lat ?? 0.0,
                pResponse.routes[0].legs[i].steps[j].startLocation.lng ?? 0.0),
            LatLng(pResponse.routes[0].legs[i].steps[j].endLocation.lat ?? 0.0,
                pResponse.routes[0].legs[i].steps[j].endLocation.lng ?? 0.0),
          ],
        );
        polylin.add(polyline);
      }
    }
  } catch (e) {
    rethrow;
  }
  return polylin;
}

String formatLatLngList(List<LatLng> latLngList) {
  return latLngList
      .map((latLng) => '${latLng.latitude},${latLng.longitude}')
      .join('|');
}
