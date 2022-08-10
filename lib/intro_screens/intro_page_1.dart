import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const  Color.fromARGB(255, 64, 75, 81),
      child: const Center(
        child: Text(
          'Page 1',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      
    );
       
  }
}
