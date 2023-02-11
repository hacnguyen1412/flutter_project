import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import '../../../../../core/common/cache_error.dart';
import '../../../../../core/common/error.dart';
import '../../../data/shipping_address/model/shipping_address_dao.dart';
import '../../repository/shipping_address_repository.dart';

@singleton
class CacheShippingAddressesUseCase {
  final ShippingAddressRepository _repository;

  CacheShippingAddressesUseCase(this._repository);

  Result<bool, AppError> execute(List<ShippingAddressDao> addresses) {
    try {
      _repository.cacheAddresses(addresses);
      return const Success(true);
    } catch (error, stackTrace) {
      return Error(
        CacheError(
          error: error,
          type: CacheErrorType.cacheFail,
          stackTrace: stackTrace,
        ),
      );
    }
  }
}
