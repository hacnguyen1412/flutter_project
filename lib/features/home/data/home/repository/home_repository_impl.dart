import 'package:injectable/injectable.dart';
import '../../../../../core/realm/realm_transformer.dart';
import '../../../domain/repository/home_repository.dart';
import '../model/task_dao.dart';
import '../model/task_dto.dart';
import 'local_data_source.dart';
import 'remote_data_source.dart';

@Singleton(as: HomeRepository)
class HomeRepositoryImpl extends HomeRepository {
  final HomeLocalDataSource localDataSource;
  final HomeRemoteDataSource remoteDataSource;

  HomeRepositoryImpl(
    this.remoteDataSource,
    this.localDataSource,
  );

  @override
  Future<List<TaskDao>> getTasksCached() async {
    return localDataSource.getTasksCached();
  }

  @override
  void cacheTasks(List<TaskDao> tasks) {
    localDataSource.cacheTasks(tasks);
  }

  @override
  Future<List<TaskDto>> fetchTasks() {
    return remoteDataSource.fetchTasks();
  }

  @override
  Stream<RealmDataChange<TaskDao>>? getStream() {
    return localDataSource.getTaskChangeStream();
  }

  @override
  void addTask(TaskDao task) {
    localDataSource.addTask(task);
  }
}
