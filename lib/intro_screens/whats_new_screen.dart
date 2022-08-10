import 'package:flutter/material.dart';
import 'package:onbording/intro_screens/main_screen.dart';
import 'package:onbording/main.dart';

// ignore: camel_case_types
class whats_new_screen extends StatelessWidget {
  const whats_new_screen({Key? key}) : super(key: key);

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
        color:const Color.fromARGB(255, 64, 75, 81),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
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
                  Text(
                    '* Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lom has been the industrys standardtype and scrambled it to make a type specimen book',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '* Lorem Ipsum is simply dummy text of the printing and typesetting industry. LorIpsum has been the industrys standard df type and scrambled it to make a type specimen book ',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '*Lorem Ipsum is simply dummy text of the printing anustry.',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '* Lorem Ipsum is simply dummy text of the printing and typesetting im Ipsum has been the industrys standard dummy text ever since the 1500s, when an',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '* Lorem Ipsum is simply dummy text of the printing and typesetting indurem Ipsum has been the industrys standard dummy text ever since the 1500s, when an',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
              //footer
              const SizedBox(height: 50),
              Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 40,
                      ),
                      SizedBox(
                        width: 200,
                        height: 60,
                        child: ElevatedButton(
                          child: const Text(
                            'Continue',
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MainScreen()));
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
