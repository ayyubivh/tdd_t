import 'package:mash/mash/domain/entities/vehicle_tracker/vehicle_location_entity.dart';
import 'package:xml/xml.dart' as xml;

class VehicleLocationModel extends VehicleLocationEntity {
  VehicleLocationModel(
      {required super.status,
      required super.latitude,
      required super.longitude});

  // Factory constructor for creating a new VehicleLocation instance from an XML document.
  factory VehicleLocationModel.fromXml(String xmlString) {
    final document = xml.XmlDocument.parse(xmlString);
    final statusElement = document.findAllElements('status').first;
    final latitudeElement = document.findAllElements('latitude').first;
    final longitudeElement = document.findAllElements('longitude').first;

    return VehicleLocationModel(
      status: statusElement.innerText,
      latitude: double.parse(latitudeElement.innerText),
      longitude: double.parse(longitudeElement.innerText),
    );
  }
}
