import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/domain/entities/notes/notes_details_entity.dart';
import 'package:mash/mash/domain/repositories/home_work_notes_repository.dart';

@lazySingleton
@injectable
class GetHomeWorkDetails
    implements UseCase<NotesReportDetailsEntity, HomeWorkDetailsParams> {
  final HomeWorkNotesRepository homeWorkNotesRepository;

  GetHomeWorkDetails({required this.homeWorkNotesRepository});

  @override
  Future<NotesReportDetailsEntity> call(HomeWorkDetailsParams params) async {
    return await homeWorkNotesRepository.getHomeWorkReportsDetails(
        compId: params.compId, workId: params.noteId);
  }
}

class HomeWorkDetailsParams {
  final String compId;
  final String noteId;

  HomeWorkDetailsParams(this.compId, this.noteId);
  Map<String, dynamic> toJson() {
    return {"P_COMP_ID": compId, "P_WORK_ID": noteId};
  }
}
