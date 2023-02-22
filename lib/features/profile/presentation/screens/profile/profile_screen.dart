import 'package:flutter/material.dart';
import 'package:flutter_project/core/route/router.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../../../../di/di.dart';
import '../../../../../core/ui/src/ui_manager/ui_manager.dart';
import '../../controllers/profile/profile_controller.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final controller = getIt<ProfileController>();
  final router = getIt<AppRouter>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Profile screen"),
          actions: [
            IconButton(
                onPressed: () {
                  UIManager.of(context).toggleThemeMode();
                },
                icon: const Icon(
                  Icons.add,
                )),
          ],
        ),
        body: Obx(() {
          final state = controller.rxState.value;
          switch (state) {
            case ProfileUIState.idle:
            case ProfileUIState.fetching:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case ProfileUIState.fetchError:
              return const Center(
                child: Text("Fetch error"),
              );
            case ProfileUIState.fetchSuccess:
              final addresses = controller.rxShippingAddresses;
              return ListView.separated(
                padding: const EdgeInsets.all(12),
                itemCount: addresses.length,
                itemBuilder: (context, index) {
                  final address = addresses[index];
                  return GestureDetector(
                    child: Text(address.address),
                    onTap: () {
                      router
                          .pushNamed('/shipping_address/${address.id}/detail');
                    },
                  );
                },
                separatorBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 0.5,
                    color: Colors.grey.shade300,
                  );
                },
              );

            default:
              return const Text("Error");
          }
        }),
      ),
    );
  }
}
