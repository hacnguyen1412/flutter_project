import 'package:flutter_project/core/common/error.dart';

enum ShippingAddressErrorType {
  getFail,
}

class ShippingAddressError extends AppError {
  ShippingAddressError({
    required super.error,
    required super.type,
    required super.stackTrace,
  });
}
