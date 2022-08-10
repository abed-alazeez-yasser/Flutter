import 'dart:html';

import 'package:flutter/material.dart';
import 'package:onbording/main.dart';

class whats_new_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const MyApp()));
            },
            icon: const Icon(Icons.close_sharp),
            padding: const EdgeInsets.all(5),
            iconSize: 30,
          ),
        ],
      ),
      body: Container(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Column(
            children: [
              //header
              Row(
                children: const [
                  Image(image: AssetImage('images/wn.png')),
                  SizedBox(width: 20),
                  Text(
                    'Whats New?',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              //body
              const SizedBox(height: 20),
              Column(
                children: const [
                  Text('*as'),
                  SizedBox(height: 10),
                  Text('*as'),
                  SizedBox(height: 10),
                  Text('*as'),
                  SizedBox(height: 10),
                  Text('*as'),
                  SizedBox(height: 10),
                  Text('*as'),
                  SizedBox(height: 10),
                ],
              ),
              //footer
              const SizedBox(height: 50),
              Row(),
            ],
          ),
        ),
      ),
    );
  }
}
