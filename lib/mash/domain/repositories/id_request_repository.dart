


import 'package:mash/mash/domain/entities/id_module/id_request_entity.dart';

import '../../data/remote/request/post_id_request.dart';
import '../../data/remote/request/transfer_request_type_request.dart';

abstract class IdRequestRepository{
  Future<List<IdRequestEntity>>  getIdRequestType(IdRequest request);
  Future<void> postIdRequest(PostIdRequest request);
}