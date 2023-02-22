import 'package:flutter/material.dart';
import 'package:flutter_project/core/route/router.dart';
import 'package:flutter_project/core/ui/core_ui.dart';
import 'di/di.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final appRouter = getIt<AppRouter>();
  final uiConfiguration = getIt<UIConfiguration>();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return UIManager(
      builder: (light, dark, locale) {
        return MaterialApp.router(
          title: 'Food delivery',
          debugShowCheckedModeBanner: false,
          locale: locale,
          theme: light,
          darkTheme: dark,
          routeInformationParser: appRouter.defaultRouteParser(),
          routerDelegate: appRouter.delegate(),
          localizationsDelegates: const [
            AppLocalizationsDelegate(),
            GlobalWidgetsLocalizations.delegate,
            ...GlobalMaterialLocalizations.delegates,
          ],
          supportedLocales: localizedLabels.keys.toList(),
        );
      },
      configuration: uiConfiguration,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }
}
