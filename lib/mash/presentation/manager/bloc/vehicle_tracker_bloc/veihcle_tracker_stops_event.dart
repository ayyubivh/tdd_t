part of 'veihcle_tracker_stops_bloc.dart';

@freezed
class VehicleTrackerStopsEvent with _$VehicleTrackerStopsEvent {
  const factory VehicleTrackerStopsEvent.started() = _Started;
  const factory VehicleTrackerStopsEvent.initMap() = _InitMap;
  const factory VehicleTrackerStopsEvent.getBusLocation() = _GetBusLocation;
  const factory VehicleTrackerStopsEvent.addPolyLines(
      {required Set<Polyline> polyLine}) = _AddPolyLines;
}
