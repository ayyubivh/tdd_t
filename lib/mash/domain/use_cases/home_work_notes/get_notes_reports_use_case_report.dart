import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/home_work_report_request.dart';
import 'package:mash/mash/domain/entities/notes/notes_report_entity.dart';
import 'package:mash/mash/domain/repositories/home_work_notes_repository.dart';

@lazySingleton
@injectable
class NotesReportsUseCase
    implements UseCase<List<NotesReportEntity>, HomeWorkReportRequest> {
  final HomeWorkNotesRepository homeWorkNotesRepository;

  NotesReportsUseCase({required this.homeWorkNotesRepository});

  @override
  Future<List<NotesReportEntity>> call(HomeWorkReportRequest params) async {
    return await homeWorkNotesRepository.getNoteReports(params);
  }
}
