// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i20;
import 'package:event_bus_plus/event_bus_plus.dart' as _i14;
import 'package:flutter_project/core/auth/data/repository/auth_local_data_source.dart'
    as _i6;
import 'package:flutter_project/core/auth/data/repository/auth_remote_data_source.dart'
    as _i7;
import 'package:flutter_project/core/auth/data/repository/auth_service.dart'
    as _i10;
import 'package:flutter_project/core/auth/data/repository/auto_repository_impl.dart'
    as _i9;
import 'package:flutter_project/core/auth/domain/repository/auth_repository.dart'
    as _i8;
import 'package:flutter_project/core/auth/domain/use_case/auth_use_case.dart'
    as _i19;
import 'package:flutter_project/core/auth/domain/use_case/cache_auth_use_case.dart'
    as _i12;
import 'package:flutter_project/core/auth/domain/use_case/check_auth_use_case.dart'
    as _i13;
import 'package:flutter_project/core/auth/domain/use_case/get_auth_use_case.dart'
    as _i15;
import 'package:flutter_project/core/common/app_directory.dart' as _i3;
import 'package:flutter_project/core/realm/app_realm.dart' as _i4;
import 'package:flutter_project/core/route/router.dart' as _i5;
import 'package:flutter_project/core/ui/src/ui_manager/ui_manager.dart' as _i18;
import 'package:flutter_project/features/home/data/home/repository/home_repository_impl.dart'
    as _i25;
import 'package:flutter_project/features/home/data/home/repository/local_data_source.dart'
    as _i16;
import 'package:flutter_project/features/home/data/home/repository/remote_data_source.dart'
    as _i23;
import 'package:flutter_project/features/home/data/home/repository/rest_client.dart'
    as _i22;
import 'package:flutter_project/features/home/domain/repository/home_repository.dart'
    as _i24;
import 'package:flutter_project/features/home/domain/use_case/add_task_use_case.dart'
    as _i28;
import 'package:flutter_project/features/home/domain/use_case/cache_homes_use_case.dart'
    as _i30;
import 'package:flutter_project/features/home/domain/use_case/fetch_home_use_case.dart'
    as _i32;
import 'package:flutter_project/features/home/domain/use_case/get_homes_cached_use_case.dart'
    as _i34;
import 'package:flutter_project/features/home/presentation/controllers/banner/banner_controller.dart'
    as _i11;
import 'package:flutter_project/features/home/presentation/controllers/home/home_controller.dart'
    as _i35;
import 'package:flutter_project/features/profile/data/shipping_address/repository_impl/shipping_address_repository_impl.dart'
    as _i27;
import 'package:flutter_project/features/profile/data/shipping_address/repository_impl/shipping_address_rest_client.dart'
    as _i21;
import 'package:flutter_project/features/profile/domain/repository/shipping_address_repository.dart'
    as _i26;
import 'package:flutter_project/features/profile/domain/use_case/shipping_address/cache_shipping_address_use_case.dart'
    as _i29;
import 'package:flutter_project/features/profile/domain/use_case/shipping_address/fetch_shipping_address_use_case.dart'
    as _i31;
import 'package:flutter_project/features/profile/domain/use_case/shipping_address/get_shipping_address_cached_use_case.dart'
    as _i33;
import 'package:flutter_project/features/profile/presentation/controllers/profile/profile_controller.dart'
    as _i36;
import 'package:flutter_project/features/profile/presentation/controllers/shipping_address/shipping_address_controller.dart'
    as _i37;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i17;

import 'dio_module.dart' as _i38;
import 'register_module.dart' as _i39;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  final dIOModule = _$DIOModule();
  await gh.factoryAsync<_i3.AppDirectory>(
    () => registerModule.appDirectory,
    preResolve: true,
  );
  gh.singleton<_i4.AppRealm>(_i4.AppRealm());
  gh.singleton<_i5.AppRouter>(_i5.AppRouter());
  gh.singleton<_i6.AuthLocalDataSource>(_i6.AuthLocalDataSource());
  gh.singleton<_i7.AuthRemoteDataSource>(_i7.AuthRemoteDataSource());
  gh.singleton<_i8.AuthRepository>(_i9.AuthRepositoryImpl(
    gh<_i6.AuthLocalDataSource>(),
    gh<_i7.AuthRemoteDataSource>(),
  ));
  gh.singleton<_i10.AuthService>(_i10.AuthService());
  gh.factory<_i11.BannerController>(() => _i11.BannerControllerImpl());
  gh.singleton<_i12.CacheAuthUserCase>(
      _i12.CacheAuthUserCase(gh<_i8.AuthRepository>()));
  gh.singleton<_i13.CheckAuthUseCase>(
      _i13.CheckAuthUseCase(gh<_i8.AuthRepository>()));
  gh.lazySingleton<_i14.EventBus>(() => registerModule.eventBus);
  gh.singleton<_i15.GetAuthUseCase>(
      _i15.GetAuthUseCase(gh<_i8.AuthRepository>()));
  gh.singleton<_i16.HomeLocalDataSource>(
      _i16.HomeLocalDataSource(gh<_i4.AppRealm>()));
  await gh.factoryAsync<_i17.SharedPreferences>(
    () => registerModule.prefs,
    preResolve: true,
  );
  await gh.lazySingletonAsync<_i18.UIConfiguration>(
    () => registerModule.uiConfiguration(gh<_i17.SharedPreferences>()),
    preResolve: true,
  );
  gh.factory<bool>(
    () => dIOModule.enableLog,
    instanceName: 'enableLog',
  );
  gh.singleton<_i19.AuthUseCase>(_i19.AuthUseCase(
    cacheAuth: gh<_i12.CacheAuthUserCase>(),
    checkAuth: gh<_i13.CheckAuthUseCase>(),
    getAuth: gh<_i15.GetAuthUseCase>(),
  ));
  gh.lazySingleton<_i20.Dio>(
      () => dIOModule.dio(enableLog: gh<bool>(instanceName: 'enableLog')));
  gh.singleton<_i21.ShippingAddressRestClient>(
      _i21.ShippingAddressRestClient(gh<_i20.Dio>()));
  gh.singleton<_i22.TaskRestClient>(_i22.TaskRestClient(gh<_i20.Dio>()));
  gh.singleton<_i23.HomeRemoteDataSource>(
      _i23.HomeRemoteDataSource(gh<_i22.TaskRestClient>()));
  gh.singleton<_i24.HomeRepository>(_i25.HomeRepositoryImpl(
    gh<_i23.HomeRemoteDataSource>(),
    gh<_i16.HomeLocalDataSource>(),
  ));
  gh.singleton<_i26.ShippingAddressRepository>(
      _i27.ShippingAddressRepositoryImpl(
    gh<_i21.ShippingAddressRestClient>(),
    gh<_i4.AppRealm>(),
  ));
  gh.singleton<_i28.AddTasksUseCase>(
      _i28.AddTasksUseCase(gh<_i24.HomeRepository>()));
  gh.singleton<_i29.CacheShippingAddressesUseCase>(
      _i29.CacheShippingAddressesUseCase(gh<_i26.ShippingAddressRepository>()));
  gh.singleton<_i30.CacheTasksUseCase>(
      _i30.CacheTasksUseCase(gh<_i24.HomeRepository>()));
  gh.singleton<_i31.FetchShippingAddressesUseCase>(
      _i31.FetchShippingAddressesUseCase(gh<_i26.ShippingAddressRepository>()));
  gh.singleton<_i32.FetchTasksUseCase>(
      _i32.FetchTasksUseCase(gh<_i24.HomeRepository>()));
  gh.singleton<_i33.GetShippingAddressCachedUseCase>(
      _i33.GetShippingAddressCachedUseCase(
          gh<_i26.ShippingAddressRepository>()));
  gh.singleton<_i34.GetTasksCachedUseCase>(
      _i34.GetTasksCachedUseCase(gh<_i24.HomeRepository>()));
  gh.factory<_i35.HomeController>(() => _i35.HomeControllerImpl(
        gh<_i30.CacheTasksUseCase>(),
        gh<_i32.FetchTasksUseCase>(),
        gh<_i34.GetTasksCachedUseCase>(),
        gh<_i28.AddTasksUseCase>(),
      ));
  gh.factory<_i36.ProfileController>(() => _i36.ProfileControllerImpl(
        gh<_i31.FetchShippingAddressesUseCase>(),
        gh<_i29.CacheShippingAddressesUseCase>(),
      ));
  gh.factory<_i37.ShippingAddressController>(() =>
      _i37.ShippingAddressControllerImpl(
          gh<_i33.GetShippingAddressCachedUseCase>()));
  return getIt;
}

class _$DIOModule extends _i38.DIOModule {}

class _$RegisterModule extends _i39.RegisterModule {}
