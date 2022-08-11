import 'package:flutter/material.dart';
import 'package:onbording/main.dart';

class WhatsNew extends StatelessWidget {
  const WhatsNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            //icon Row
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
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
            //image and title Row
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                // Image(image: AssetImage('images/wn.png')),
                SizedBox(width: 20, height: 30),
                Text(
                  'Whats New?',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            //text Row
            const SizedBox(height: 30),
            const Text(
              '* Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lom has been the industrys standardtype and scrambled it to make a type specimen book',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  overflow: TextOverflow.ellipsis),
              maxLines: 5,
            ),
            //button Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ),
      ),
    ));

    //  Scaffold(
    //   body: SafeArea(
    //     child: Padding(
    //       padding: const EdgeInsets.all(10),
    //       child: Column(
    //         children: [
    //           //icon Row
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.start,
    //             children: [
    //               IconButton(
    //                 onPressed: () {
    //                   Navigator.pushReplacement(
    //                       context,
    //                       MaterialPageRoute(
    //                           builder: (context) => const MyApp()));
    //                 },
    //                 icon: const Icon(Icons.close_sharp),
    //                 padding: const EdgeInsets.all(5),
    //                 iconSize: 30,
    //               ),
    //             ],
    //           ),
    //           //image and title Row
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.start,
    //             children: const [
    //               Image(image: AssetImage('images/wn.png')),
    //               SizedBox(width: 20, height: 30),
    //               Text(
    //                 'Whats New?',
    //                 style: TextStyle(
    //                   fontSize: 30,
    //                   fontWeight: FontWeight.bold,
    //                   color: Colors.black,
    //                 ),
    //               ),
    //             ],
    //           ),
    //           //text Row
    //           const SizedBox(height: 30),
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.start,
    //             children: [
    //               Column(
    //                 children: [
    //                   Row(
    //                     children: [
    //                       Text(
    //                         '* Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lom has been the industrys standardtype and scrambled it to make a type specimen book',
    //                         style: TextStyle(
    //                           fontSize: 18,
    //                           fontWeight: FontWeight.bold,
    //                           color: Colors.black,
    //                         ),
    //                         maxLines: 5,
    //                       ),
    //                     ],
    //                   ),
    //                   // SizedBox(height: 10),
    //                   // Text(
    //                   //   '* Lorem Ipsum is simply dummy text of the printing and typesetting industry. LorIpsum has been the industrys standard df type and scrambled it to make a type specimen book ',
    //                   //   style: TextStyle(
    //                   //     fontSize: 18,
    //                   //     fontWeight: FontWeight.bold,
    //                   //     color: Colors.white,
    //                   //   ),
    //                   // ),
    //                   // SizedBox(height: 10),
    //                   // Text(
    //                   //   '*Lorem Ipsum is simply dummy text of the printing anustry.',
    //                   //   style: TextStyle(
    //                   //     fontSize: 18,
    //                   //     fontWeight: FontWeight.bold,
    //                   //     color: Colors.white,
    //                   //   ),
    //                   // ),
    //                   // SizedBox(height: 10),
    //                   // Text(
    //                   //   '* Lorem Ipsum is simply dummy text of the printing and typesetting im Ipsum has been the industrys standard dummy text ever since the 1500s, when an',
    //                   //   style: TextStyle(
    //                   //     fontSize: 18,
    //                   //     fontWeight: FontWeight.bold,
    //                   //     color: Colors.white,
    //                   //   ),
    //                   // ),
    //                   // SizedBox(height: 10),
    //                   // Text(
    //                   //   '* Lorem Ipsum is simply dummy text of the printing and typesetting indurem Ipsum has been the industrys standard dummy text ever since the 1500s, when an',
    //                   //   style: TextStyle(
    //                   //     fontSize: 18,
    //                   //     fontWeight: FontWeight.bold,
    //                   //     color: Colors.white,
    //                   //   ),
    //                   // ),
    //                   // SizedBox(height: 10),
    //                 ],
    //               ),
    //             ],
    //           ),
    //           //button Row
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
