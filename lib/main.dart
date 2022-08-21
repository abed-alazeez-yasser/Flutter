import 'package:flutter/material.dart';
import 'package:onbording/Shared/shared_prefs.dart';
import 'package:onbording/app_screens/lanuch_screen.dart';
import 'package:onbording/app_screens/main_screen.dart';
import 'package:onbording/app_screens/setting_screen.dart';
import 'package:onbording/intro_screens/onbording_screen.dart';

//commit 13/8/2022
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefs.instance.initPrefs();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('en'),
      debugShowCheckedModeBanner: false,
      initialRoute: '/lanuch_screen',
      routes: {
        '/lanuch_screen': (context) => const LanuchScreen(),
        '/main_screen': (context) => const MainScreen(),
        '/on_boarding_screen': (context) => const Intro(),
        '/setting_screen': (context) => const SettingScreen(),
      },
      home: const Intro(),
    );
  }
}
