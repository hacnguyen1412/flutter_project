import 'package:injectable/injectable.dart';
import 'cache_auth_use_case.dart';
import 'check_auth_use_case.dart';
import 'get_auth_use_case.dart';

@singleton
class AuthUseCase {
  final CacheAuthUserCase cacheAuth;
  final CheckAuthUseCase checkAuth;
  final GetAuthUseCase getAuth;

  AuthUseCase({
    required this.cacheAuth,
    required this.checkAuth,
    required this.getAuth,
  });
}
