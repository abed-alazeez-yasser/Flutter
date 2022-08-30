import 'package:flutter/material.dart';
import 'package:onbording/providers/note_provider.dart';
import 'package:onbording/screens/add_notes_screen.dart';
import 'package:onbording/screens/dark_mode.dart';
import 'package:onbording/screens/lanuch_screen.dart';
import 'package:onbording/screens/main_screen.dart';
import 'package:onbording/screens/setting_screen.dart';
import 'package:onbording/intro_screens/onbording_screen.dart';
import 'package:onbording/storages/db/db_provider.dart';
import 'package:provider/provider.dart';

//commit 13/8/2022
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DbProvider().initDb();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<NoteProvider>(create: (_) => NoteProvider()),
      ],
      builder: (context, child) {
        return const MyMaterialApp();
      },
    );
  }
}

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('en'),
      debugShowCheckedModeBanner: false,
      initialRoute: '/lanuch_screen',
      routes: {
        '/lanuch_screen': (context) => const LanuchScreen(),
        '/on_boarding_screen': (context) => const Intro(),
        '/main_screen': (context) => const  MainScreen(),
        '/setting_screen': (context) => const SettingScreen(),
        '/dark_screen': (context) => const   DarkMode(),
        '/add_note_screen': (context) => const AddNotes(),
      },
      home: const Intro(),
    );
  }
}
