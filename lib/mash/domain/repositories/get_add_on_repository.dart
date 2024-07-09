


import 'package:mash/mash/data/remote/request/get_add_on_request.dart';
import 'package:mash/mash/domain/entities/add_on/add_on_detail_entity.dart';
import 'package:mash/mash/domain/entities/add_on/get_add_on_entity.dart';

abstract class GetAddOnRepository{
  Future<List<GetAddOnEntity>>  getAddOnData(GetAddOnRequest request);
  Future<List<AddOnDetailEntity>>  getAddOnDetail(GetAddOnRequest request);
}