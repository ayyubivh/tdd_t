

import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/data_sources/library_remote_data_source.dart';
import 'package:mash/mash/data/remote/request/get_physical_library_request.dart';
import 'package:mash/mash/data/remote/request/get_required_library_data_request.dart';
import 'package:mash/mash/data/remote/request/insert_physical_library_request.dart';
import 'package:mash/mash/domain/entities/library/library_get_data_entity.dart';
import 'package:mash/mash/domain/entities/library/physical_library_entity.dart';
import 'package:mash/mash/domain/repositories/library_repository.dart';


@LazySingleton(as: LibraryRepository)
@injectable
class LibraryRepoImpl extends LibraryRepository{
  final LibraryDataSource dataSource;

  LibraryRepoImpl(this.dataSource);

  @override
  Future<List<PhysicalLibraryEntity>> getPhysicalLibrary(GetPhysicalLibraryRequest request) {
    return dataSource.getPhysicalLibraryList(request);
  }

  @override
  Future<RequiredPhysicalLibraryEntity> getRequiredPhysicalLibraryData(GetRequiredLibraryDataRequest request) {
    return dataSource.getRequiredPhysicalLibraryData(request);
  }

  @override
  Future<String> postPhysicalLibRequest(InsertPhysicalLibraryRequest request) {
    return dataSource.postPhysicalLibRequest(request);
  }
  
}