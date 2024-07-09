import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/data/remote/request/academic_comp_id_request.dart';
import 'package:mash/mash/data/remote/request/academic_subjects_request.dart';
import 'package:mash/mash/domain/entities/academic/syllabus_request.dart';
import 'package:mash/mash/domain/use_cases/academic/get_academic_subject_usecase.dart';
import 'package:mash/mash/domain/use_cases/academic/get_class_details_usecase.dart';
import 'package:mash/mash/domain/use_cases/academic/get_division_details_use_case.dart';
import 'package:mash/mash/domain/use_cases/academic/get_syllabus_terms_use_case.dart';
import 'package:mash/mash/domain/use_cases/academic/get_syllabus_use_case.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';

import '../../../../../core/usecase.dart';
import '../../../../domain/entities/academic/academic_subject_entity.dart';
import '../../../../domain/entities/academic/selected_date_range_model.dart';
import '../../../../domain/entities/syllabus/syllabus_entity.dart';
import '../../../../domain/entities/syllabus/syllabus_term_entity.dart';
import '../../../../domain/use_cases/auth/get_user_info_use_case.dart';

part 'academic_bloc.freezed.dart';
part 'academic_event.dart';
part 'academic_state.dart';

@injectable
class AcademicBloc extends Bloc<AcademicEvent, AcademicState> {
  final GetClassInforUseCase getClassInforUseCase;
  final GetUserInfoUseCase getUserInfoUseCase;
  final GetAcademicSubjectUseCase getAcademicSubjectUseCase;
  final GetDivisionDetailsUseCase getDivisionDetailsUseCase;
  final GetSyllabusUseCase getSyllabusUseCase;
  final GetSyllabusTermsUseCase getSyllabusTermsUseCase;

  AcademicBloc(
    this.getDivisionDetailsUseCase, {
    required this.getClassInforUseCase,
    required this.getUserInfoUseCase,
    required this.getAcademicSubjectUseCase,
    required this.getSyllabusUseCase,
    required this.getSyllabusTermsUseCase,
  }) : super(AcademicState.initial()) {
    on<_GetClassDetails>(_getClassDetails);
    on<_GetAcademicSubjects>(_getAcademicSubjects);
    on<_GetDevisionDetails>(_getDivisionDetails);
    on<_GetSyllabus>(_getSyllabus);
    on<_GetSyllabusTerms>(_getSyllabusTerms);
    on<_ChangeSyllabusTermIndex>(_changeSyllabusTermIndex);
    on<_SelectSubjectEvent>(_selectSubjectEvent);
    on<_SelectDateRange>(_selectDateRange);
    on<_DisposeEvent>(_disposeEvent);
  }

  _getClassDetails(
    _GetClassDetails event,
    Emitter<AcademicState> emit,
  ) async {
    emit(state.copyWith(classDetails: ResponseClassify.loading()));
    try {
      final userdata = await getUserInfoUseCase.call(NoParams());
      if (userdata != null) {
        final data = await getClassInforUseCase.call(
          AcademicAndCompIdRequest(
            pAcademicId: userdata.academicId ?? '',
            pCompID: userdata.compId,
          ),
        );
        emit(state.copyWith(classDetails: ResponseClassify.completed(data)));
      } else {
        emit(state.copyWith(
            classDetails: ResponseClassify.error('User data is null')));
        prettyPrint('User data is null');
      }
    } catch (e) {
      emit(state.copyWith(classDetails: ResponseClassify.error(e.toString())));
      prettyPrint(e.toString());
    }
  }

  _getAcademicSubjects(
      _GetAcademicSubjects event, Emitter<AcademicState> emit) async {
    emit(state.copyWith(academicSubjects: ResponseClassify.loading()));
    try {
      final userdata = await getUserInfoUseCase.call(NoParams());
      if (userdata != null) {
        final data = await getAcademicSubjectUseCase.call(
          ClassAndCompIdRequest(
            classId: userdata.classId ?? "",
            compId: userdata.compId,
          ),
        );
        emit(
            state.copyWith(academicSubjects: ResponseClassify.completed(data)));
      } else {
        emit(state.copyWith(
            academicSubjects: ResponseClassify.error('User data is null')));
        prettyPrint('User data is null');
      }
    } catch (e) {
      emit(state.copyWith(
          academicSubjects: ResponseClassify.error(e.toString())));
      prettyPrint(e.toString());
    }
  }

  _getDivisionDetails(
      _GetDevisionDetails event, Emitter<AcademicState> emit) async {
    emit(state.copyWith(divisionDetails: ResponseClassify.loading()));
    try {
      final userdata = await getUserInfoUseCase.call(NoParams());
      if (userdata != null) {
        final data = await getDivisionDetailsUseCase.call(
          ClassAndCompIdRequest(
            classId: userdata.classId ?? '',
            compId: userdata.compId,
          ),
        );
        emit(state.copyWith(divisionDetails: ResponseClassify.completed(data)));
      } else {
        emit(state.copyWith(
            divisionDetails: ResponseClassify.error('User data is null')));
        prettyPrint('User data is null');
      }
    } catch (e) {
      emit(state.copyWith(
          divisionDetails: ResponseClassify.error(e.toString())));
      prettyPrint(e.toString());
    }
  }

  _getSyllabus(_GetSyllabus event, Emitter<AcademicState> emit) async {
    emit(state.copyWith(syllabus: ResponseClassify.loading()));
    try {
      final userdata = await getUserInfoUseCase.call(NoParams());
      if (userdata != null) {
        final data = await getSyllabusUseCase.call(SyllabusRequest(
          compId: userdata.compId,
          acadId: userdata.academicId,
          userType: userdata.userType,
          termId: event.termId,
        ));
        emit(state.copyWith(syllabus: ResponseClassify.completed(data)));
      } else {
        emit(state.copyWith(
            syllabus: ResponseClassify.error('User data is null')));
        prettyPrint('User data is null');
      }
    } catch (e) {
      emit(state.copyWith(syllabus: ResponseClassify.error(e.toString())));
      prettyPrint(e.toString());
    }
  }

  _getSyllabusTerms(
      _GetSyllabusTerms event, Emitter<AcademicState> emit) async {
    emit(state.copyWith(syllabusTerms: ResponseClassify.loading()));
    try {
      final userdata = await getUserInfoUseCase.call(NoParams());
      if (userdata != null) {
        final data = await getSyllabusTermsUseCase.call(SyllabusTermsRequest(
          compId: userdata.compId,
          acadId: userdata.academicId ?? '',
          classId: userdata.classId ?? '',
        ));
        emit(state.copyWith(syllabusTerms: ResponseClassify.completed(data)));
      } else {
        emit(state.copyWith(
            syllabusTerms: ResponseClassify.error('User data is null')));
        prettyPrint('User data is null');
      }
    } catch (e) {
      emit(state.copyWith(syllabusTerms: ResponseClassify.error(e.toString())));
      prettyPrint(e.toString());
    }
  }

  _changeSyllabusTermIndex(
      _ChangeSyllabusTermIndex event, Emitter<AcademicState> emit) {
    emit(state.copyWith(selectedTermIndex: event.index));
  }

  _selectSubjectEvent(_SelectSubjectEvent event, Emitter<AcademicState> emit) {
    emit(state.copyWith(
        selectedSubject: event.subject, selectedSubjectId: event.subjectId));
    prettyPrint(state.selectedSubjectId);
  }

  _selectDateRange(_SelectDateRange event, Emitter<AcademicState> emit) {
    try {
      final date = DateFormat('dd/MM/yyyy').format(event.date).toString();
      final _selectedDate = SelectedRangeModel(
          state.selectedRange?.fromDate, state.selectedRange?.toDate);
      if (event.dateType == AppStrings.fromDate) {
        emit(state.copyWith(
            selectedRange: _selectedDate.copyWith(fromDate: date)));
      } else {
        emit(state.copyWith(
            selectedRange: _selectedDate.copyWith(toDate: date)));
      }
    } catch (e) {
      prettyPrint('[error]==== $e');
    }
  }

  _disposeEvent(_DisposeEvent event, Emitter<AcademicState> emit) {
    emit(state.copyWith(
      selectedSubject: "",
      selectedSubjectId: "",
      selectedRange: null,
    ));
  }

  static AcademicBloc get(context) => BlocProvider.of(context);
}
