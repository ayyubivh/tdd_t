import '../../data/remote/request/comp_exam_toberegistered_detail_request.dart';
import '../../data/remote/request/comp_exam_toberegistered_request.dart';
import '../../data/remote/request/submit_comp_exam_toberegistered_request.dart';
import '../entities/comp_exam/comp_exam_tobe_registered_details_entity.dart';
import '../entities/comp_exam/comp_exam_tobe_registered_entity.dart';

abstract interface class CompExamRepository {
  Future<List<CompExamTobeRegistedEntity>> getCompExamTobeRegistered(
      CompExamToberegisteredRequest params);
  Future<CompExamTobeRegistedEntityDetailsEntity>
      getCompExamTobeRegisteredDetais(
          CompExamToberegisteredDetailsRequest params);

  Future<int> submitCompExamTobeRegistered(
      SubmitCompExamTobeRegiteredRequest params);
}
