import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/common/error.dart';
import '../../../../core/common/network_error.dart';
import '../model/task.dart';
import '../repository/home_repository.dart';

@singleton
class FetchTasksUseCase {
  final HomeRepository _repository;

  FetchTasksUseCase(this._repository);

  Future<Result<List<Task>, AppError>> execute() async {
    try {
      final tasks = await _repository.fetchTasks();
      final result = tasks.map((dto) => Task.fromTaskDto(dto)).toList();
      return Success(result);
    } catch (e, s) {
      return Error(NetworkError.fromError(e, s));
    }
  }
}
