import 'package:injectable/injectable.dart';

import '../model/auth_dao.dart';

@singleton
class AuthLocalDataSource {
  AuthLocalDataSource();

  void cacheAuth(AuthDao auth) {}

  AuthDao getAuth() {
    return AuthDao(token: "token", refreshToken: "refreshToken");
  }
}
