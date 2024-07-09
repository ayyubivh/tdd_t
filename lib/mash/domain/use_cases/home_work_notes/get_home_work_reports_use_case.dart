import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/home_work_report_request.dart';
import 'package:mash/mash/domain/repositories/home_work_notes_repository.dart';
import 'package:mash/mash/domain/entities/home_work/home_work_entity.dart';

@lazySingleton
@injectable
class HomeWorkReportsUseCase
    implements UseCase<List<HomeWorkReportsEntity>, HomeWorkReportRequest> {
  final HomeWorkNotesRepository homeWorkNotesRepository;

  HomeWorkReportsUseCase({required this.homeWorkNotesRepository});

  @override
  Future<List<HomeWorkReportsEntity>> call(HomeWorkReportRequest params) async {
    return await homeWorkNotesRepository.getHomeWorkReports(params);
  }
}
