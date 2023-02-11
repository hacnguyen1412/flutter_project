import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import '../../../../core/common/cache_error.dart';
import '../../../../core/common/error.dart';
import '../../data/home/model/task_dao.dart';
import '../model/task.dart';
import '../repository/home_repository.dart';

@singleton
class CacheTasksUseCase {
  final HomeRepository _repository;

  CacheTasksUseCase(this._repository);
  Result<bool, AppError> execute(List<Task> homes) {
    try {
      final tasksDao = homes
          .map((e) => TaskDao(
                e.id,
                avatar: e.avatar,
                createdAt: e.createdAt,
                name: e.name,
              ))
          .toList();
      _repository.cacheTasks(tasksDao);
      return const Success(true);
    } catch (e, s) {
      return Error(
        CacheError(
          error: e,
          type: CacheErrorType.cacheFail,
          stackTrace: s,
        ),
      );
    }
  }
}
