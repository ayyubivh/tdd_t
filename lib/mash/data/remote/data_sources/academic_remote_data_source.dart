import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/mash/data/remote/models/academic/academic_subjects_model.dart';
import 'package:mash/mash/data/remote/models/academic/academic_type.dart';
import 'package:mash/mash/data/remote/models/academic/class_details_model.dart';
import 'package:mash/mash/data/remote/models/academic/division_details_model.dart';
import 'package:mash/mash/data/remote/models/academic/syllabus/syllabus_models.dart';
import 'package:mash/mash/data/remote/models/academic/syllabus/syllabus_term_model.dart';
import 'package:mash/mash/data/remote/request/academic_comp_id_request.dart';
import 'package:mash/mash/data/remote/request/academic_subjects_request.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';
import 'package:mash/mash/domain/entities/academic/academic_type_entity.dart';

import '../../../domain/entities/academic/syllabus_request.dart';
import '../../../domain/entities/dashboard/digital_library_entity.dart';
import '../models/dashboard/digital_library_model.dart';
import '../request/di_type_request.dart';
import '../request/digital_library_request.dart';
import '../request/insert_dl_click.dart';

@factoryMethod
abstract interface class AcademicRemoteDataSource {
  Future<List<ClassDetailsModel>> getClassDetails(
      AcademicAndCompIdRequest params);
  Future<List<AcademicSubjectModel>> getAcademicSubjects(
      ClassAndCompIdRequest params);
  Future<List<DivisionDetailsModel?>> getDivisionDetails(
      ClassAndCompIdRequest params);
  Future<List<SyllabusModel>> getSyllabus(SyllabusRequest params);
  Future<List<SyllabusTermModel?>> getSyllabusTerms(
      SyllabusTermsRequest params);
  Future<List<DigitalLibraryEntity>> getDigitalLibrary(
      DigitalLibraryRequest request);
  Future<List<AcademicTypeEntity>> getAcademicTypes(
      DlTypeRequest dlTypeRequest);
  Future<void> insertDlClick(BookmarkLikeModel request);
}

@LazySingleton(as: AcademicRemoteDataSource)
@injectable
class AcademicRemoteDataSourceImpl extends AcademicRemoteDataSource {
  final ApiProvider apiProvider;

  AcademicRemoteDataSourceImpl(this.apiProvider);
  @override
  Future<List<ClassDetailsModel>> getClassDetails(
      AcademicAndCompIdRequest params) async {
    final data = await apiProvider.get(AppRemoteRoutes.classDetails,
        body: params.toJson());
    final List<dynamic> dataList = data['resTable'];

    return dataList.map((e) => ClassDetailsModel.fromJson(e)).toList();
  }

  @override
  Future<List<AcademicSubjectModel>> getAcademicSubjects(
      ClassAndCompIdRequest params) async {
    final data = await apiProvider.get(AppRemoteRoutes.academicSubjects,
        body: params.toJson());
    final List<dynamic> dataList = data['resTable'];

    return dataList.map((e) => AcademicSubjectModel.fromJson(e)).toList();
  }

  @override
  Future<List<DivisionDetailsModel?>> getDivisionDetails(
      ClassAndCompIdRequest params) async {
    final data = await apiProvider.get(AppRemoteRoutes.divisionDetails,
        body: params.toJson());
    final List<dynamic> dataList = data['resTable'];

    return dataList.map((e) => DivisionDetailsModel.fromJson(e)).toList();
  }

  @override
  Future<List<SyllabusModel>> getSyllabus(SyllabusRequest params) async {
    final data =
        await apiProvider.get(AppRemoteRoutes.syllabus, body: params.toJson());
    final List<dynamic> dataList = data['resTable'];

    return dataList.map((e) => SyllabusModel.fromJson(e)).toList();
  }

  @override
  Future<List<SyllabusTermModel?>> getSyllabusTerms(
      SyllabusTermsRequest params) async {
    final data = await apiProvider.get(AppRemoteRoutes.syllabusTerms,
        body: params.toJson());
    final List<dynamic> dataList = data['resTable'];

    return dataList.map((e) => SyllabusTermModel.fromJson(e)).toList();
  }

  @override
  Future<List<DigitalLibraryEntity>> getDigitalLibrary(
      DigitalLibraryRequest request) async {
    final data = await apiProvider.get(AppRemoteRoutes.digitalLibrary,
        body: request.toJson());
    return List<DigitalLibraryEntity>.from(
        data['resTable'].map((e) => DigitalLibraryModel.fromJson(e))).toList();
  }

  @override
  Future<List<AcademicTypeEntity>> getAcademicTypes(
      DlTypeRequest dlTypeRequest) async {
    final data = await apiProvider.get(AppRemoteRoutes.getTypes,
        body: dlTypeRequest.toJson());
    return List<AcademicTypeEntity>.from(data['resTable']
        .map((e) => AcademicTypeModel.fromJson(e, dlTypeRequest.pModuleName)));
  }

  @override
  Future<void> insertDlClick(BookmarkLikeModel request) async {
    await apiProvider.post(AppRemoteRoutes.insertDlClick, request.toJson());
  }
}
// List<T> _convertToDivisionDetailsList<T>(dynamic data, T Function(Map<String, dynamic>) fromJson) {
//   return (data['resTable'] as List<dynamic>).map((e) => fromJson(e as Map<String, dynamic>)).toList();
// }
