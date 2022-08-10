import 'package:flutter/material.dart';
import 'package:onbording/intro_screens/intro_page_1.dart';
import 'package:onbording/intro_screens/intro_page_2.dart';
import 'package:onbording/intro_screens/intro_page_3.dart';
import 'package:onbording/intro_screens/whats_new_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const OnbordingScreen());
}

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({Key? key}) : super(key: key);

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  //controller to be track of which page we're on
  final PageController _controller = PageController();
  //keep track of if we are on the last page or not
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              i = index;
            });
          },
          children: <Widget>[
            IntroPage1(),
            IntroPage2(),
            IntroPage3(),
          ],
        ),
        Positioned(
          bottom: 40,
          left: 0,
          right: 0,
          child: Column(
            children: [
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                onDotClicked: (index) => _controller.jumpToPage(index),
              ),
              const SizedBox(height: 50),
              Container(
                alignment: const Alignment(0, 0.75),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //previousPage
                    const SizedBox(width: 20),
                    i == 0 || i == 2
                        ? const SizedBox.shrink()
                        : GestureDetector(
                            onTap: () {
                              _controller.previousPage(
                                  duration: const Duration(microseconds: 100),
                                  curve: Curves.easeIn);
                            },
                            child: Row(
                              children: const [
                                Icon(Icons.arrow_back,
                                    color: Colors.white, size: 20),
                                Text("Previous",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20))
                              ],
                            )),
                    //space between previous and next
                    i == 2
                        ? SizedBox(
                            width: double.infinity,
                            height: 60,
                            child: ElevatedButton(
                              child: const Text(
                                'Let\'s go right away!',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>  whats_new_screen()));
                              },
                            ),
                          )
                        : const Spacer(),
                    //nextPage
                    i == 2
                        ? const SizedBox.shrink()
                        : GestureDetector(
                            onTap: () {
                              _controller.nextPage(
                                  duration: const Duration(microseconds: 100),
                                  curve: Curves.easeIn);
                            },
                            child: Row(
                              children: const [
                                Text("Next",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20)),
                                Icon(Icons.arrow_forward,
                                    color: Colors.white, size: 20),
                              ],
                            )),

                    const SizedBox(width: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
