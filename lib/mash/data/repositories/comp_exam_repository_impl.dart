import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/request/comp_exam_toberegistered_detail_request.dart';
import 'package:mash/mash/data/remote/request/comp_exam_toberegistered_request.dart';
import 'package:mash/mash/data/remote/request/submit_comp_exam_toberegistered_request.dart';
import 'package:mash/mash/domain/entities/comp_exam/comp_exam_tobe_registered_details_entity.dart';
import 'package:mash/mash/domain/entities/comp_exam/comp_exam_tobe_registered_entity.dart';
import '../../domain/repositories/comp_exam_repository.dart';
import '../remote/data_sources/comp_exam_remote_data_source.dart';

@LazySingleton(as: CompExamRepository)
@injectable
class CompExamRepositoryImpl implements CompExamRepository {
  final CompExamRemoteDatasource _compExamRemoteDatasource;

  CompExamRepositoryImpl(this._compExamRemoteDatasource);
  @override
  Future<List<CompExamTobeRegistedEntity>> getCompExamTobeRegistered(
      CompExamToberegisteredRequest params) {
    return _compExamRemoteDatasource.getCompExamTobeRegistered(params);
  }

  @override
  Future<CompExamTobeRegistedEntityDetailsEntity>
      getCompExamTobeRegisteredDetais(
          CompExamToberegisteredDetailsRequest params) {
    return _compExamRemoteDatasource.getCompExamTobeRegisteredDetais(params);
  }

  @override
  Future<int> submitCompExamTobeRegistered(
      SubmitCompExamTobeRegiteredRequest params) {
    return _compExamRemoteDatasource.submitCompExamTobeRegistered(params);
  }
}
