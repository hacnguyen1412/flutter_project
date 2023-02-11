import 'package:flutter_project/core/realm/app_realm.dart';
import 'package:flutter_project/features/profile/data/shipping_address/repository_impl/shipping_address_rest_client.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/repository/shipping_address_repository.dart';
import '../model/shipping_address_dao.dart';
import '../model/shipping_address_dto.dart';

@Singleton(as: ShippingAddressRepository)
class ShippingAddressRepositoryImpl extends ShippingAddressRepository {
  final ShippingAddressRestClient remoteDataSource;
  final AppRealm localDataSource;

  ShippingAddressRepositoryImpl(this.remoteDataSource, this.localDataSource);
  @override
  void cacheAddresses(List<ShippingAddressDao> addresses) {
    localDataSource.addAll(addresses);
  }

  @override
  Future<List<ShippingAddressDto>> fetchAddresses() async {
    final result = await remoteDataSource.fetchShippingAddress();

    return result;
  }

  @override
  ShippingAddressDao getAddressCached(String id) {
    final result = localDataSource.get<ShippingAddressDao>(primaryKey: id);
    return result!;
  }
}
