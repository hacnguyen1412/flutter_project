import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/model/shipping_address.dart';
import '../../../domain/use_case/shipping_address/cache_shipping_address_use_case.dart';
import '../../../domain/use_case/shipping_address/fetch_shipping_address_use_case.dart';

enum ProfileUIState {
  idle,
  fetching,
  fetchSuccess,
  fetchError,
}

abstract class ProfileController {
  RxList<ShippingAddress> get rxShippingAddresses;
  Rx<ProfileUIState> get rxState;
}

@Injectable(as: ProfileController)
class ProfileControllerImpl extends ProfileController {
  final FetchShippingAddressesUseCase fetchAddresses;
  final CacheShippingAddressesUseCase cacheAddresses;

  ProfileControllerImpl(this.fetchAddresses, this.cacheAddresses) {
    fetchShippingAddresses();
  }

  @override
  final RxList<ShippingAddress> rxShippingAddresses = RxList<ShippingAddress>();

  @override
  Rx<ProfileUIState> rxState = Rx<ProfileUIState>(ProfileUIState.idle);

  Future<void> fetchShippingAddresses() async {
    assert(rxState.value != ProfileUIState.fetching);
    rxState.value = ProfileUIState.fetching;
    final result = await fetchAddresses.execute();
    result.when(
      (addresses) {
        rxShippingAddresses.value = addresses;
        rxState.value = ProfileUIState.fetchSuccess;
        cacheAddresses.execute(addresses.toListAddressDao());
      },
      (error) {
        rxState.value = ProfileUIState.fetchError;
      },
    );
  }
}
