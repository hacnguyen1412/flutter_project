import 'package:flutter/material.dart';
import 'package:flutter_project/core/ui/core_ui.dart';

class MainDrawerView extends StatelessWidget {
  const MainDrawerView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DrawerView(
      focusNode: FocusScope.of(context),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Toggle theme'),
            onTap: () {
              context.uiBehavior.toggleThemeMode();
            },
          ),
          ListTile(
            title: const Text('Change language'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
