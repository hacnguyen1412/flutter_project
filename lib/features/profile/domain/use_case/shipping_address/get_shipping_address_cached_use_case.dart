import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../../core/common/cache_error.dart';
import '../../../../../core/common/error.dart';
import '../../model/shipping_address.dart';
import '../../repository/shipping_address_repository.dart';

@singleton
class GetShippingAddressCachedUseCase {
  final ShippingAddressRepository _repository;

  GetShippingAddressCachedUseCase(this._repository);

  Result<ShippingAddress, AppError> execute(String shippingAddressId) {
    try {
      final addressDao = _repository.getAddressCached(shippingAddressId);
      final address = ShippingAddress.fromDao(addressDao);
      return Success(address);
    } catch (error, stackTrace) {
      return Error(
        AppError(
            error: error,
            stackTrace: stackTrace,
            type: CacheErrorType.getCacheFail),
      );
    }
  }
}
