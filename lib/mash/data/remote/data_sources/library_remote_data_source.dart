


import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/mash/data/remote/models/library/physical_library_model.dart';
import 'package:mash/mash/data/remote/models/library/required_library_data_model.dart';
import 'package:mash/mash/data/remote/request/get_physical_library_request.dart';
import 'package:mash/mash/data/remote/request/get_required_library_data_request.dart';
import 'package:mash/mash/data/remote/request/insert_physical_library_request.dart';
import 'package:mash/mash/data/remote/request/teacher_post_rating_request.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';
import 'package:mash/mash/domain/entities/library/library_get_data_entity.dart';
import 'package:mash/mash/domain/entities/library/physical_library_entity.dart';

abstract class LibraryDataSource {
  Future<List<PhysicalLibraryEntity>>  getPhysicalLibraryList(GetPhysicalLibraryRequest request);
  Future<RequiredPhysicalLibraryEntity>  getRequiredPhysicalLibraryData(GetRequiredLibraryDataRequest request);
  Future<String> postPhysicalLibRequest(InsertPhysicalLibraryRequest request);
}


@LazySingleton(as: LibraryDataSource)
@injectable
class LibraryDataSourceImpl extends LibraryDataSource{
  final ApiProvider apiProvider;

  LibraryDataSourceImpl(this.apiProvider);

  @override
  Future<List<PhysicalLibraryEntity>> getPhysicalLibraryList(GetPhysicalLibraryRequest request) async {
    final data = await  apiProvider.get(AppRemoteRoutes.getPhysicalLibrary,body: request.toJson());
    return List<PhysicalLibraryEntity>.from(data["resTable"].map((e)=>PhysicalLibraryModel.fromJson(e))).toList();
  }

  @override
  Future<RequiredPhysicalLibraryEntity> getRequiredPhysicalLibraryData(GetRequiredLibraryDataRequest request) async {
    final data = await  apiProvider.get(AppRemoteRoutes.getPhysicalLibraryRequiredData,body: request.toJson());
      return RequiredLibraryDataModel.fromJson(data);
  }

  @override
  Future<String> postPhysicalLibRequest(InsertPhysicalLibraryRequest request) async {
    final data = await  apiProvider.post(AppRemoteRoutes.insertPhysicalLibraryRequest,request.toJson());
    return data['resMessage'];
  }

}