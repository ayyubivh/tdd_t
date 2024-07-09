

import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/domain/entities/offline_time_table/offline_timetable_entity.dart';
import 'package:mash/mash/domain/repositories/time_table_repository.dart';

import '../../../data/remote/request/get_offline_exam_time_table_request.dart';

@lazySingleton
@injectable
class GetOfflineExamTimeTableUseCase extends UseCase<List<OfflineExamTimeTableEntity>, ExamTimeTableRequest>{
  final TimeTableRepository repository;

  GetOfflineExamTimeTableUseCase(this.repository);

  @override
  Future<List<OfflineExamTimeTableEntity>> call(ExamTimeTableRequest params) {
    return repository.getOfflineTimeTable(params);
  }
}