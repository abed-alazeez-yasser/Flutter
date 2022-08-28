import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onbording/screens/main_screen.dart';
import 'package:onbording/main.dart';

class WhatsNew extends StatelessWidget {
  const WhatsNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 64, 75, 81),
      body: Stack(
        children: [
          Positioned(
            right: 0,
            left: 10,
            top: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyApp()));
                    },
                    icon: SvgPicture.asset(
                      'assets/svgs/close.svg',
                      color: Colors.white,
                      width: 25,
                    ),
                    padding: const EdgeInsets.all(5),
                    iconSize: 30,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 20,
            left: 20,
            top: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Image(image: AssetImage('assets/images/wn.png')),
                SizedBox(width: 20, height: 30),
                Text(
                  'Whats New?',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 20,
            left: 20,
            top: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(height: 16),
                Text(
                  '* Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lom has been the industrys standardtype and scrambled it to make a type specimen book',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  maxLines: 5,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  '* Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lom has been the industrys standardtype and scrambled it to make a type specimen book',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  maxLines: 5,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  '* Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lom has been the industrys standardtype and scrambled it to make a type specimen book',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  maxLines: 5,
                ),
              ],
            ),
          ),
          Positioned(
            right: 20,
            left: 20,
            bottom: 20,
            child: SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const  MainScreen()));
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 39, 48, 55),
                  elevation: 8,
                  shadowColor: const Color.fromARGB(255, 64, 75, 81),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                child: const Text(
                  'Continue To App',
                  style: TextStyle(fontSize: 25.0, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
