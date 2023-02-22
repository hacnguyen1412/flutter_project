import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../di/di.dart';
import '../../../../../core/route/router.dart';
import '../../controllers/home/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = getIt<HomeController>();
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
          title: const Text("Home screen"),
        ),
        body: Obx(() {
          final state = controller.rxState.value;
          switch (state) {
            case HomeStateUI.idle:
            case HomeStateUI.loading:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case HomeStateUI.loaded:
              final tasks = controller.rxTasks;
              return ListView.separated(
                padding: const EdgeInsets.all(12),
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  final task = tasks[index];
                  return GestureDetector(
                    child: Text(task.id),
                    onTap: () {
                      router.pushNamed('/shipping_address/${task.id}/detail');
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            router.push(
              const BannerScreenRoute(),
            );
          },
        ),
      ),
    );
  }
}
