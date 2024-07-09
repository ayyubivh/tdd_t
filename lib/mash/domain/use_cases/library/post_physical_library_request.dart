


import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/insert_physical_library_request.dart';
import 'package:mash/mash/domain/repositories/library_repository.dart';

@lazySingleton
@injectable
class PostPhysicalLibraryUseCase extends UseCase<String, InsertPhysicalLibraryRequest>{
  final LibraryRepository repository;

  PostPhysicalLibraryUseCase(this.repository);

  @override
  Future<String> call(InsertPhysicalLibraryRequest params) {
    return repository.postPhysicalLibRequest(params);
  }

}