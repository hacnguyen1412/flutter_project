import 'package:injectable/injectable.dart';
import '../../../../../core/realm/app_realm.dart';
import '../../../../../core/realm/realm_transformer.dart';
import '../model/task_dao.dart';

@singleton
class HomeLocalDataSource {
  final AppRealm _realm;

  HomeLocalDataSource(this._realm);

  List<TaskDao> getTasksCached() {
    final tasks = _realm.getList<TaskDao>();
    return tasks;
  }

  void cacheTasks(List<TaskDao> tasks) {
    _realm.addAll(tasks);
  }

  Stream<RealmDataChange<TaskDao>>? getTaskChangeStream() {
    return _realm.getStream<TaskDao>();
  }

  void addTask(TaskDao taskDao) {
    _realm.delete<TaskDao>(primaryKey: taskDao.id);
    _realm.add(taskDao);
  }
}
