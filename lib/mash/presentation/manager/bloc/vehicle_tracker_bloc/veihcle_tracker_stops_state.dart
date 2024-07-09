part of 'veihcle_tracker_stops_bloc.dart';

@freezed
class VehicleTrackerStopsState with _$VehicleTrackerStopsState {
  const factory VehicleTrackerStopsState({
    StudentRouteEntity? getTrackerStops,
    Set<Polyline>? polyLines,
    VehicleTrackerEntity? studentStop,
    @Default(0) double distance,
    @Default("0") String time,
    ValueNotifier<VehicleLocationEntity?>? getBusLiveLocation,
    BitmapDescriptor? busMakerIcon,
    BitmapDescriptor? studentMarker,
    BitmapDescriptor? stopMarker,
    @Default(false) bool isLoading,
  }) = _VehicleTrackerStopsState;

  factory VehicleTrackerStopsState.initial() => VehicleTrackerStopsState();
}
