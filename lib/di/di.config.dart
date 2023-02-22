// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i21;
import 'package:event_bus_plus/event_bus_plus.dart' as _i15;
import 'package:flutter_project/core/auth/data/repository/auth_local_data_source.dart'
    as _i7;
import 'package:flutter_project/core/auth/data/repository/auth_remote_data_source.dart'
    as _i8;
import 'package:flutter_project/core/auth/data/repository/auth_service.dart'
    as _i11;
import 'package:flutter_project/core/auth/data/repository/auto_repository_impl.dart'
    as _i10;
import 'package:flutter_project/core/auth/domain/repository/auth_repository.dart'
    as _i9;
import 'package:flutter_project/core/auth/domain/use_case/auth_use_case.dart'
    as _i20;
import 'package:flutter_project/core/auth/domain/use_case/cache_auth_use_case.dart'
    as _i13;
import 'package:flutter_project/core/auth/domain/use_case/check_auth_use_case.dart'
    as _i14;
import 'package:flutter_project/core/auth/domain/use_case/get_auth_use_case.dart'
    as _i16;
import 'package:flutter_project/core/common/app_directory.dart' as _i3;
import 'package:flutter_project/core/common/app_size.dart' as _i6;
import 'package:flutter_project/core/realm/app_realm.dart' as _i4;
import 'package:flutter_project/core/route/router.dart' as _i5;
import 'package:flutter_project/core/ui/src/ui_manager/ui_manager.dart' as _i19;
import 'package:flutter_project/features/home/data/home/repository/home_repository_impl.dart'
    as _i26;
import 'package:flutter_project/features/home/data/home/repository/local_data_source.dart'
    as _i17;
import 'package:flutter_project/features/home/data/home/repository/remote_data_source.dart'
    as _i24;
import 'package:flutter_project/features/home/data/home/repository/rest_client.dart'
    as _i23;
import 'package:flutter_project/features/home/domain/repository/home_repository.dart'
    as _i25;
import 'package:flutter_project/features/home/domain/use_case/add_task_use_case.dart'
    as _i29;
import 'package:flutter_project/features/home/domain/use_case/cache_homes_use_case.dart'
    as _i31;
import 'package:flutter_project/features/home/domain/use_case/fetch_home_use_case.dart'
    as _i33;
import 'package:flutter_project/features/home/domain/use_case/get_homes_cached_use_case.dart'
    as _i35;
import 'package:flutter_project/features/home/presentation/controllers/banner/banner_controller.dart'
    as _i12;
import 'package:flutter_project/features/home/presentation/controllers/home/home_controller.dart'
    as _i36;
import 'package:flutter_project/features/profile/data/shipping_address/repository_impl/shipping_address_repository_impl.dart'
    as _i28;
import 'package:flutter_project/features/profile/data/shipping_address/repository_impl/shipping_address_rest_client.dart'
    as _i22;
import 'package:flutter_project/features/profile/domain/repository/shipping_address_repository.dart'
    as _i27;
import 'package:flutter_project/features/profile/domain/use_case/shipping_address/cache_shipping_address_use_case.dart'
    as _i30;
import 'package:flutter_project/features/profile/domain/use_case/shipping_address/fetch_shipping_address_use_case.dart'
    as _i32;
import 'package:flutter_project/features/profile/domain/use_case/shipping_address/get_shipping_address_cached_use_case.dart'
    as _i34;
import 'package:flutter_project/features/profile/presentation/controllers/profile/profile_controller.dart'
    as _i37;
import 'package:flutter_project/features/profile/presentation/controllers/shipping_address/shipping_address_controller.dart'
    as _i38;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i18;

import 'dio_module.dart' as _i39;
import 'register_module.dart' as _i40;

const String _prod = 'prod';
const String _test = 'test';

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
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
    registerFor: {_prod},
    preResolve: true,
  );
  gh.singleton<_i4.AppRealm>(
    _i4.AppRealm(),
    registerFor: {_prod},
  );
  gh.singleton<_i5.AppRouter>(_i5.AppRouter());
  gh.singleton<_i6.AppSize>(_i6.AppSizeImpl());
  gh.singleton<_i7.AuthLocalDataSource>(_i7.AuthLocalDataSource());
  gh.singleton<_i8.AuthRemoteDataSource>(_i8.AuthRemoteDataSource());
  gh.singleton<_i9.AuthRepository>(_i10.AuthRepositoryImpl(
    gh<_i7.AuthLocalDataSource>(),
    gh<_i8.AuthRemoteDataSource>(),
  ));
  gh.singleton<_i11.AuthService>(_i11.AuthService());
  gh.factory<_i12.BannerController>(() => _i12.BannerControllerImpl());
  gh.singleton<_i13.CacheAuthUserCase>(
      _i13.CacheAuthUserCase(gh<_i9.AuthRepository>()));
  gh.singleton<_i14.CheckAuthUseCase>(
      _i14.CheckAuthUseCase(gh<_i9.AuthRepository>()));
  gh.lazySingleton<_i15.EventBus>(() => registerModule.eventBus);
  gh.singleton<_i16.GetAuthUseCase>(
      _i16.GetAuthUseCase(gh<_i9.AuthRepository>()));
  gh.singleton<_i17.HomeLocalDataSource>(
      _i17.HomeLocalDataSource(gh<_i4.AppRealm>()));
  await gh.factoryAsync<_i18.SharedPreferences>(
    () => registerModule.prefs,
    preResolve: true,
  );
  await gh.lazySingletonAsync<_i19.UIConfiguration>(
    () => registerModule.uiConfiguration(gh<_i18.SharedPreferences>()),
    preResolve: true,
  );
  gh.factory<bool>(
    () => dIOModule.enableLog,
    instanceName: 'enableLog',
  );
  gh.singleton<_i20.AuthUseCase>(_i20.AuthUseCase(
    cacheAuth: gh<_i13.CacheAuthUserCase>(),
    checkAuth: gh<_i14.CheckAuthUseCase>(),
    getAuth: gh<_i16.GetAuthUseCase>(),
  ));
  gh.lazySingleton<_i21.Dio>(
      () => dIOModule.dio(enableLog: gh<bool>(instanceName: 'enableLog')));
  gh.singleton<_i22.ShippingAddressRestClient>(
      _i22.ShippingAddressRestClient(gh<_i21.Dio>()));
  gh.singleton<_i23.TaskRestClient>(_i23.TaskRestClient(gh<_i21.Dio>()));
  gh.singleton<_i24.HomeRemoteDataSource>(
    _i24.HomeRemoteDataSource(gh<_i23.TaskRestClient>()),
    registerFor: {
      _test,
      _prod,
    },
  );
  gh.singleton<_i25.HomeRepository>(_i26.HomeRepositoryImpl(
    gh<_i24.HomeRemoteDataSource>(),
    gh<_i17.HomeLocalDataSource>(),
  ));
  gh.singleton<_i27.ShippingAddressRepository>(
      _i28.ShippingAddressRepositoryImpl(
    gh<_i22.ShippingAddressRestClient>(),
    gh<_i4.AppRealm>(),
  ));
  gh.singleton<_i29.AddTasksUseCase>(
      _i29.AddTasksUseCase(gh<_i25.HomeRepository>()));
  gh.singleton<_i30.CacheShippingAddressesUseCase>(
      _i30.CacheShippingAddressesUseCase(gh<_i27.ShippingAddressRepository>()));
  gh.singleton<_i31.CacheTasksUseCase>(
      _i31.CacheTasksUseCase(gh<_i25.HomeRepository>()));
  gh.singleton<_i32.FetchShippingAddressesUseCase>(
      _i32.FetchShippingAddressesUseCase(gh<_i27.ShippingAddressRepository>()));
  gh.singleton<_i33.FetchTasksUseCase>(
      _i33.FetchTasksUseCase(gh<_i25.HomeRepository>()));
  gh.singleton<_i34.GetShippingAddressCachedUseCase>(
      _i34.GetShippingAddressCachedUseCase(
          gh<_i27.ShippingAddressRepository>()));
  gh.singleton<_i35.GetTasksCachedUseCase>(
      _i35.GetTasksCachedUseCase(gh<_i25.HomeRepository>()));
  gh.factory<_i36.HomeController>(() => _i36.HomeControllerImpl(
        gh<_i31.CacheTasksUseCase>(),
        gh<_i33.FetchTasksUseCase>(),
        gh<_i35.GetTasksCachedUseCase>(),
        gh<_i29.AddTasksUseCase>(),
      ));
  gh.factory<_i37.ProfileController>(() => _i37.ProfileControllerImpl(
        gh<_i32.FetchShippingAddressesUseCase>(),
        gh<_i30.CacheShippingAddressesUseCase>(),
      ));
  gh.factory<_i38.ShippingAddressController>(() =>
      _i38.ShippingAddressControllerImpl(
          gh<_i34.GetShippingAddressCachedUseCase>()));
  return getIt;
}

class _$DIOModule extends _i39.DIOModule {}

class _$RegisterModule extends _i40.RegisterModule {}
