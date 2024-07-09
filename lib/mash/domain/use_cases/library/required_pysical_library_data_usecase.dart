



import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/get_required_library_data_request.dart';
import 'package:mash/mash/domain/entities/library/library_get_data_entity.dart';

import '../../repositories/library_repository.dart';

@lazySingleton
@injectable
class GetRequiredPhysicalLibraryDataUseCase extends UseCase<RequiredPhysicalLibraryEntity,GetRequiredLibraryDataRequest>{
  final LibraryRepository repository;

  GetRequiredPhysicalLibraryDataUseCase(this.repository);

  @override
  Future<RequiredPhysicalLibraryEntity> call(GetRequiredLibraryDataRequest params) {
    return repository.getRequiredPhysicalLibraryData(params);
}
}
