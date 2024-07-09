

import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/get_physical_library_request.dart';
import 'package:mash/mash/domain/entities/library/physical_library_entity.dart';
import 'package:mash/mash/domain/repositories/library_repository.dart';

@lazySingleton
@injectable
class GetPhysicalLibraryUseCase extends UseCase<List<PhysicalLibraryEntity>,GetPhysicalLibraryRequest>{
  final LibraryRepository repository;

  GetPhysicalLibraryUseCase(this.repository);

  @override
  Future<List<PhysicalLibraryEntity>> call(GetPhysicalLibraryRequest params) {
    return repository.getPhysicalLibrary(params);
  }


}
