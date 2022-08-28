import 'package:flutter/material.dart';
import 'package:onbording/Shared/shared_prefs.dart';

class LanuchScreen extends StatefulWidget {
  const LanuchScreen({Key? key}) : super(key: key);

  @override
  State<LanuchScreen> createState() => _LanuchScreenState();
}

class _LanuchScreenState extends State<LanuchScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, getInitRoute());
    });
  }
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 64, 75, 81),
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              SizedBox(
                width: 100,
                height: 100,
                child: Image.asset('assets/images/mainIcon.png'),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'To Do List',
                style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  String getInitRoute() {
    if (SharedPrefs.instance.getIsFirstOpenApp() == false) {
      return '/on_boarding_screen';
    } else {
      return '/setting_screen';
    }
  }
}
