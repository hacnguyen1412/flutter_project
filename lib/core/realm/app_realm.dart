import 'package:flutter/foundation.dart';
import 'package:flutter_project/features/profile/data/shipping_address/model/shipping_address_dao.dart';
import 'package:injectable/injectable.dart';
import 'package:realm/realm.dart';
import '../../features/home/data/home/model/task_dao.dart';
import './core_realm.dart';

@singleton
class AppRealm extends CoreRealm with CoreRealmImpl {
  AppRealm() : super();
  @override
  Configuration get config => Configuration.local(
        [
          TaskDao.schema,
          ShippingAddressDao.schema,
        ],
        initialDataCallback: (realm) {
          debugPrint("initialDataCallback: ${realm.toString()}");
        },
        migrationCallback: (migration, oldSchemaVersion) {
          final realm = migration.newRealm;
          debugPrint("migrationCallback: ${realm.toString()}");
          //do something
        },
        schemaVersion: 0,
      );
}
