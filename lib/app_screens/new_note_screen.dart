import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewNote extends StatelessWidget {
  const NewNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 64, 75, 81),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
        title: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/main_screen');
          },
          icon: SvgPicture.asset(
            'assets/svgs/arrow-left.svg',
            color: Colors.white,
            width: 25,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/main_screen');
                  },
                  icon: SvgPicture.asset(
                    'assets/svgs/alarm.svg',
                    color: Colors.white,
                    width: 25,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'save',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
