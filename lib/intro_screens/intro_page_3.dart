import 'package:flutter/material.dart';
import 'package:onbording/intro_screens/whats_new_screen.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 64, 75, 81),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
              'images/screen1.png',
            ),
            const SizedBox(height: 20),
            const Text(
              'Title',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Lorem Ipsum is simply dummy text of the printing and typeset',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
            const Spacer(),
            Center(
                child: SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WhatsNew()));
                          
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
            )),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
