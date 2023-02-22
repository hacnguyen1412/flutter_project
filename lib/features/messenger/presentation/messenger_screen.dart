import 'package:flutter/material.dart';
import 'package:flutter_project/features/messenger/presentation/controllers/messages_behavior.dart';
import 'package:flutter_project/features/messenger/presentation/controllers/messenger_controller.dart';
import '/core/common/app_size.dart';
import '/core/ui/core_ui.dart';
import '/di/di.dart';
import '/features/messenger/presentation/widgets/drawer_view.dart';
import '/features/messenger/presentation/widgets/input_text_field.dart';
import 'controllers/input_behavior.dart';
import 'widgets/messages_view.dart';

class MessengerScreen extends StatefulWidget {
  const MessengerScreen({super.key});

  @override
  State<MessengerScreen> createState() => _MessengerScreenState();
}

class _MessengerScreenState extends State<MessengerScreen> {
  final size = getIt<AppSize>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final controller = getIt<MessengerController>();

  late InputBehavior inputBehavior = controller.inputBehavior;
  late MessagesBehavior messagesBehavior = controller.messagesBehavior;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        drawer: const MainDrawerView(),
        backgroundColor: context.appTheme.backgroundPrimary,
        appBar: AppBar(
          backgroundColor: context.appTheme.backgroundPrimary,
          elevation: 1,
          actions: [
            IconButton(
              onPressed: () {},
              icon: IconView(Icons.add, color: context.appTheme.textPrimary),
            )
          ],
          title: TextView(
            "Chat GPTs",
            style: TextStyle(
              color: context.appTheme.textPrimary,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              //context.uiBehavior.toggleThemeMode();
              scaffoldKey.currentState?.openDrawer();
            },
            icon: Icon(
              Icons.menu,
              color: context.appTheme.textPrimary,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: MessagesView(
                messagesBehavior: messagesBehavior,
              ),
            ),
            InputTextField(
              inputBehavior: inputBehavior,
            ),
          ],
        ),
      ),
    );
  }
}
