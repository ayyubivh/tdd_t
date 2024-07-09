import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/insert_dl_click.dart';
import 'package:mash/mash/domain/repositories/academic_repository.dart';

@lazySingleton
@injectable
class InsertDlClickUseCase extends UseCase<void, BookmarkLikeModel> {
  final AcademicRepository repository;

  InsertDlClickUseCase(this.repository);

  @override
  Future<void> call(BookmarkLikeModel params) {
    return repository.insertDlClick(params);
  }
}
