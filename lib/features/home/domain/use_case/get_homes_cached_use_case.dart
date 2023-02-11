import 'dart:async';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import '../../../../core/common/cache_error.dart';
import '../../../../core/common/error.dart';
import '../../../../core/realm/realm_transformer.dart';
import '../../data/home/model/task_dao.dart';
import '../model/task.dart';
import '../repository/home_repository.dart';

@singleton
class GetTasksCachedUseCase {
  final HomeRepository _repository;

  GetTasksCachedUseCase(this._repository);
  StreamSubscription<RealmDataChange<TaskDao>>? sub;
  Future<Result<List<Task>, AppError>> execute() async {
    try {
      final homes = await _repository.getTasksCached();
      final result = homes.map((taskDao) => Task.fromTaskDao(taskDao)).toList();
      return Success(result);
    } catch (e, s) {
      return Error(
        CacheError(
          error: e,
          type: CacheErrorType.getCacheFail,
          stackTrace: s,
        ),
      );
    }
  }
}
