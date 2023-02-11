import '../../../../core/realm/realm_transformer.dart';
import '../../data/home/model/task_dao.dart';
import '../../data/home/model/task_dto.dart';

abstract class HomeRepository {
  Future<List<TaskDto>> fetchTasks();

  Future<List<TaskDao>> getTasksCached();

  void cacheTasks(List<TaskDao> tasks);

  Stream<RealmDataChange<TaskDao>>? getStream();

  void addTask(TaskDao task);
}
