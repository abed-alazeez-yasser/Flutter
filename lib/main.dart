import 'package:flutter/material.dart';
import 'package:onbording/Shared/shared_prefs.dart';
import 'package:onbording/app_screens/dark_mode.dart';
import 'package:onbording/app_screens/lanuch_screen.dart';
import 'package:onbording/app_screens/main_screen.dart';
import 'package:onbording/app_screens/new_note_screen.dart';
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
        '/on_boarding_screen': (context) => const Intro(),
        '/main_screen': (context) => const MainScreen(),
        '/setting_screen': (context) => const SettingScreen(),
        '/dark_screen': (context) => const DarkMode(),
        '/new_note_screen': (context) => const NewNote(),
      },
      home: const Intro(),
    );
  }
}
