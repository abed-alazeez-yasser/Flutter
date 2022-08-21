import 'package:flutter/material.dart';
import 'package:onbording/Shared/shared_prefs.dart';
import 'package:onbording/intro_screens/intro_page_1.dart';
import 'package:onbording/intro_screens/intro_page_2.dart';
import 'package:onbording/intro_screens/intro_page_3.dart';
import 'package:onbording/intro_screens/whats_new_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _Introtate();
}

class _Introtate extends State<Intro> {
  //controller to be track of which page we're on
  //keep track of if we are on the last page or not
  int i = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    SharedPrefs.instance.setIsFirstOpenApp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 64, 75, 81),
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    i = index;
                  });
                },
                children: const <Widget>[
                  IntroPage1(),
                  IntroPage2(),
                  IntroPage3(),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  onDotClicked: (index) => pageController.jumpToPage(index),
                ),
                const SizedBox(height: 50),
                Container(
                  alignment: const Alignment(0, 0.60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //previousPage
                      const SizedBox(width: 20),
                      i != 1
                          ? const SizedBox.shrink()
                          : GestureDetector(
                              onTap: () {
                                pageController.previousPage(
                                    duration: const Duration(microseconds: 100),
                                    curve: Curves.easeIn);
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
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
                              width: MediaQuery.of(context).size.width - 40,
                              height: 60,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary:
                                      const Color.fromARGB(255, 39, 48, 55),
                                  elevation: 8,
                                  shadowColor:
                                      const Color.fromARGB(255, 64, 75, 81),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                ),
                                child: const Text(
                                  'Go!',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const WhatsNew()));
                                },
                              ),
                            )
                          : const Spacer(),
                      //nextPage
                      i == 2
                          ? const SizedBox.shrink()
                          : GestureDetector(
                              onTap: () {
                                pageController.nextPage(
                                    duration: const Duration(microseconds: 100),
                                    curve: Curves.easeIn);
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
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
            const SizedBox(
              height: 20,
            )
          ],
        ));
  }
}
