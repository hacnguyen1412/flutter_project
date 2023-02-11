import 'package:flutter_project/core/auth/data/model/auth_dao.dart';

abstract class AuthRepository {
  AuthDao getAuth();
  void cacheAuth(AuthDao auth);
}
