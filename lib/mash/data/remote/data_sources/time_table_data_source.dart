import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/mash/data/remote/models/time_table/daily_time_table_model.dart';
import 'package:mash/mash/data/remote/request/daily_time_table_request.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';
import 'package:mash/mash/domain/entities/timeTable/daily_time_table_entity.dart';

abstract class TimeTableDataSource{
  Future<List<DailyTimeTableEntity>>  getDailyTimeTable(DailyTimeTableRequest request);
}

@LazySingleton(as:TimeTableDataSource )
@injectable
class TimeTableDataSourceImpl extends TimeTableDataSource{
  final ApiProvider apiProvider;

  TimeTableDataSourceImpl(this.apiProvider);


  @override
  Future<List<DailyTimeTableEntity>> getDailyTimeTable(DailyTimeTableRequest request) async {
    final data = await  apiProvider.get(AppRemoteRoutes.dailyTimeTable,body: request.toJson());
    return List<DailyTimeTableEntity>.from(data["resTable"].map((e)=>DailyTimeTableModel.fromJson(e))).toList();
  }

}