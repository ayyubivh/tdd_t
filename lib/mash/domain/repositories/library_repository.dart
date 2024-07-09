

import 'package:mash/mash/data/remote/request/get_physical_library_request.dart';
import 'package:mash/mash/data/remote/request/insert_physical_library_request.dart';
import 'package:mash/mash/domain/entities/library/library_get_data_entity.dart';
import 'package:mash/mash/domain/entities/library/physical_library_entity.dart';

import '../../data/remote/request/get_required_library_data_request.dart';

abstract class LibraryRepository{
  Future<List<PhysicalLibraryEntity>>  getPhysicalLibrary(GetPhysicalLibraryRequest request);
  Future < RequiredPhysicalLibraryEntity> getRequiredPhysicalLibraryData(GetRequiredLibraryDataRequest request);
  Future<String> postPhysicalLibRequest(InsertPhysicalLibraryRequest request);
}