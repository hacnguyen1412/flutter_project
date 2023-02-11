import 'package:injectable/injectable.dart';
import '../../domain/repository/auth_repository.dart';
import '../model/auth_dao.dart';
import 'auth_local_data_source.dart';
import 'auth_remote_data_source.dart';

@Singleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthLocalDataSource localDataSource;
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.localDataSource, this.remoteDataSource);
  @override
  AuthDao getAuth() {
    return localDataSource.getAuth();
  }

  @override
  void cacheAuth(AuthDao auth) {
    localDataSource.cacheAuth(auth);
  }
}
