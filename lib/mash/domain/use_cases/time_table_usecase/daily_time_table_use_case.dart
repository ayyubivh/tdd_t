


import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/daily_time_table_request.dart';
import 'package:mash/mash/domain/entities/timeTable/daily_time_table_entity.dart';
import 'package:mash/mash/domain/repositories/time_table_repository.dart';

@lazySingleton
@injectable
class GetDailyTimeTableUseCase extends UseCase<List<DailyTimeTableEntity>, DailyTimeTableRequest>{
  final TimeTableRepository repository;

  GetDailyTimeTableUseCase(this.repository);

  @override
  Future<List<DailyTimeTableEntity>> call(DailyTimeTableRequest params) {
    return repository.getDailyTimeTable(params);
  }


}