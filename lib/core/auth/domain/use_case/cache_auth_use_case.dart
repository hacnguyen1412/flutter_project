import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import '../../../common/cache_error.dart';
import '../../../common/error.dart';
import '../model/auth.dart';
import '../repository/auth_repository.dart';

@singleton
class CacheAuthUserCase {
  final AuthRepository repository;

  CacheAuthUserCase(this.repository);
  Result<bool, AppError> execute(Auth auth) {
    try {
      final authDao = auth.toDao();
      repository.cacheAuth(authDao);
      return const Success(true);
    } catch (e, s) {
      return Error(
        CacheError(
          error: e,
          stackTrace: s,
          type: CacheErrorType.cacheFail,
        ),
      );
    }
  }
}
