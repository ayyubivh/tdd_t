import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/mash/data/remote/data_sources/academic_remote_data_source.dart';
import 'package:mash/mash/data/remote/request/academic_subjects_request.dart';
import 'package:mash/mash/data/remote/request/insert_dl_click.dart';
import 'package:mash/mash/domain/entities/academic/academic_subject_entity.dart';
import 'package:mash/mash/domain/entities/academic/class_details_entity.dart';
import 'package:mash/mash/domain/entities/academic/syllabus_request.dart';
import 'package:mash/mash/domain/entities/syllabus/syllabus_entity.dart';
import 'package:mash/mash/domain/entities/syllabus/syllabus_term_entity.dart';
import 'package:mash/mash/domain/repositories/academic_repository.dart';

import '../../domain/entities/academic/academic_type_entity.dart';
import '../../domain/entities/academic/division_details_entity.dart';
import '../../domain/entities/dashboard/digital_library_entity.dart';
import '../remote/request/academic_comp_id_request.dart';
import '../remote/request/di_type_request.dart';
import '../remote/request/digital_library_request.dart';

@LazySingleton(as: AcademicRepository)
@injectable
class AcademicRepositoryImpl implements AcademicRepository {
  final AcademicRemoteDataSource academicRemoteDataSource;

  AcademicRepositoryImpl(this.academicRemoteDataSource);

  @override
  Future<List<ClassDetailsEntity>> getClassDetails(
      AcademicAndCompIdRequest params) async {
    return academicRemoteDataSource.getClassDetails(params);
  }

  @override
  Future<List<AcademicSubjectEntity>> getAcademicSubjects(
      ClassAndCompIdRequest params) async {
    return academicRemoteDataSource.getAcademicSubjects(params);
  }

  @override
  Future<List<DivisionEntityDetailsEnitity?>> getDivisionDetails(
      ClassAndCompIdRequest params) async {
    return academicRemoteDataSource.getDivisionDetails(params);
  }

  @override
  Future<List<SyllabusEntity?>> getSyllabus(SyllabusRequest params) async {
    try {
      final result = await academicRemoteDataSource.getSyllabus(params);
      prettyPrint(result.toString());
      return result;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<List<SyllabusTermEntity?>> getSyllabusTerms(
      SyllabusTermsRequest params) async {
    return academicRemoteDataSource.getSyllabusTerms(params);
  }

  @override
  Future<List<DigitalLibraryEntity>> getDigitalLibrary(
      DigitalLibraryRequest request) {
    return academicRemoteDataSource.getDigitalLibrary(request);
  }

  @override
  Future<List<AcademicTypeEntity>> getAcademicTypes(
      DlTypeRequest dlTypeRequest) {
    return academicRemoteDataSource.getAcademicTypes(dlTypeRequest);
  }

  @override
  Future<void> insertDlClick(BookmarkLikeModel request) {
    return academicRemoteDataSource.insertDlClick(request);
  }
}
