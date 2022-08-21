import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 64, 75, 81),
      child: Center(
        child: Column(
          children: [
            const Spacer(),
             Image.asset(
              'assets/images/screen1.png',
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
          ],
        ),
      ),
    );
  }
}
