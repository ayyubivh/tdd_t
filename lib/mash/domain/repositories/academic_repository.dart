import 'package:mash/mash/domain/entities/academic/class_details_entity.dart';
import 'package:mash/mash/domain/entities/academic/division_details_entity.dart';
import 'package:mash/mash/domain/entities/academic/syllabus_request.dart';
import 'package:mash/mash/domain/entities/syllabus/syllabus_entity.dart';
import 'package:mash/mash/domain/entities/syllabus/syllabus_term_entity.dart';

import '../../data/remote/request/academic_comp_id_request.dart';
import '../../data/remote/request/academic_subjects_request.dart';
import '../../data/remote/request/di_type_request.dart';
import '../../data/remote/request/digital_library_request.dart';
import '../../data/remote/request/insert_dl_click.dart';
import '../entities/academic/academic_subject_entity.dart';
import '../entities/academic/academic_type_entity.dart';
import '../entities/dashboard/digital_library_entity.dart';

/// Interface for accessing academic data in the repository.
abstract interface class AcademicRepository {
  /// Fetches class details based on parameters.
  //
  Future<List<ClassDetailsEntity>> getClassDetails(
      AcademicAndCompIdRequest params);
  //
  /// Fetches academic subjects based on parameters.
  //
  Future<List<AcademicSubjectEntity>> getAcademicSubjects(
      ClassAndCompIdRequest params);

  ///Fetches divistion  details
  //
  Future<List<DivisionEntityDetailsEnitity?>> getDivisionDetails(
      ClassAndCompIdRequest params);

  ///Fetches syllabus
  //
  Future<List<SyllabusEntity?>> getSyllabus(SyllabusRequest params);

  ///Fetches syllabus terms
  //
  Future<List<SyllabusTermEntity?>> getSyllabusTerms(
      SyllabusTermsRequest params);

  Future<List<DigitalLibraryEntity>> getDigitalLibrary(
      DigitalLibraryRequest request);

  Future<List<AcademicTypeEntity>> getAcademicTypes(
      DlTypeRequest dlTypeRequest);
  Future<void> insertDlClick(BookmarkLikeModel request);
}
