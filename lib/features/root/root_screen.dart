import 'package:flutter/material.dart';
import 'package:flutter_project/di/di.dart';
import 'package:flutter_project/core/common/app_size.dart';
import 'package:flutter_project/features/messenger/presentation/messenger_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  Widget build(BuildContext context) {
    return const MessengerScreen();
  }

  @override
  void didChangeDependencies() {
    getIt<AppSize>().initialize(context);
    super.didChangeDependencies();
  }
}
