import 'package:flutter/material.dart';
import 'package:flutter_project/core/common/app_size.dart';
import 'package:flutter_project/core/ui/core_ui.dart';
import 'package:flutter_project/di/di.dart';
import 'package:flutter_project/features/messenger/presentation/widgets/drawer_view.dart';
import 'package:flutter_project/features/messenger/presentation/widgets/input_text_field.dart';

class MessengerScreen extends StatefulWidget {
  const MessengerScreen({super.key});

  @override
  State<MessengerScreen> createState() => _MessengerScreenState();
}

class _MessengerScreenState extends State<MessengerScreen> {
  final size = getIt<AppSize>();
  //final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        //key: scaffoldKey,
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
            "Chat GPT",
            style: TextStyle(
              color: context.appTheme.textPrimary,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              context.uiBehavior.toggleThemeMode();
              setState(() {});
              //scaffoldKey.currentState?.openDrawer();
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
              child: ListView.builder(
                reverse: true,
                itemCount: 100,
                padding: const EdgeInsets.all(12),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    decoration: BoxDecoration(
                        color: context.appTheme.backgroundSecondary,
                        borderRadius: BorderRadius.circular(8)),
                    padding: const EdgeInsets.all(12),
                    child: TextView(index.toString()),
                  );
                },
              ),
            ),
            const InputTextField(),
          ],
        ),
      ),
    );
  }
}
