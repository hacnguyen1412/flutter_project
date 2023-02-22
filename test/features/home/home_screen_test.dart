import 'package:flutter_project/core/realm/app_realm.dart';
import 'package:flutter_project/features/profile/data/shipping_address/model/shipping_address_dao.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mockito/annotations.dart';

final successDto = [
  ShippingAddressDao(
    "id1",
    address: "275 new york",
  ),
  ShippingAddressDao(
    "id2",
    address: "275 nano",
  )
];

@GenerateMocks([
  AppRealm,
])
Future<void> main() async {
  //await configureDependencies(env: inject.test);
  // testWidgets('Counter increments smoke test', (WidgetTester tester) async {
  //   // Build our app and trigger a frame.
  //   await tester.pumpWidget(const MainApp());
  // });
}
