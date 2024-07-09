

import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/get_exam_terms_detail_request.dart';
import 'package:mash/mash/domain/entities/offline_time_table/offline_time_table_term_entity.dart';
import 'package:mash/mash/domain/repositories/time_table_repository.dart';

@lazySingleton
@injectable
class GetOfflineExamTermsUseCase extends UseCase<List<OfflineTimeTableTermEntity>, ExamTermDetailRequest>{
  final TimeTableRepository repository;

  GetOfflineExamTermsUseCase(this.repository);

  @override
  Future<List<OfflineTimeTableTermEntity>> call(ExamTermDetailRequest params) {
    return repository.getOfflineExamTerms(params);
  }


}
