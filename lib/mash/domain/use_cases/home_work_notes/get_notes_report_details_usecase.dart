import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/domain/entities/notes/notes_details_entity.dart';
import 'package:mash/mash/domain/repositories/home_work_notes_repository.dart';

@lazySingleton
@injectable
class GetNoteReportDetails
    implements UseCase<NotesReportDetailsEntity, NoteDetailsParams> {
  final HomeWorkNotesRepository homeWorkNotesRepository;

  GetNoteReportDetails({required this.homeWorkNotesRepository});

  @override
  Future<NotesReportDetailsEntity> call(NoteDetailsParams params) async {
    return await homeWorkNotesRepository.getNotesReportsDetails(
        compId: params.compId, noteId: params.noteId);
  }
}

class NoteDetailsParams {
  final String compId;
  final String noteId;

  NoteDetailsParams(this.compId, this.noteId);
  Map<String, dynamic> toJson() {
    return {"P_COMP_ID": compId, "P_NOTE_ID": noteId};
  }
}
