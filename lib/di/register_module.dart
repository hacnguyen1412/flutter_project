import 'package:event_bus_plus/event_bus_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../core/common/app_directory.dart';
import '../core/ui/src/ui_manager/ui_manager.dart';

@module
abstract class RegisterModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @prod
  @preResolve
  Future<AppDirectory> get appDirectory => AppDirectory.getInstance();

  @lazySingleton
  EventBus get eventBus => EventBus();

  @preResolve
  @lazySingleton
  Future<UIConfiguration> uiConfiguration(SharedPreferences prefs) {
    return UIConfiguration.getInstance(prefs: prefs);
  }
}
