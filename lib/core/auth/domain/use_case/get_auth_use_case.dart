import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import '../../../common/cache_error.dart';
import '../../../common/error.dart';
import '../model/auth.dart';
import '../repository/auth_repository.dart';

@singleton
class GetAuthUseCase {
  final AuthRepository _repository;

  GetAuthUseCase(this._repository);

  Result<Auth, AppError> execute() {
    try {
      final authDao = _repository.getAuth();
      final auth = Auth.fromAdo(authDao);
      return Success(auth);
    } catch (e, s) {
      return Error(
        AppError(
          error: e,
          stackTrace: s,
          type: CacheErrorType.getCacheFail,
        ),
      );
    }
  }
}
