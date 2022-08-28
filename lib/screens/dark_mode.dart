import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DarkMode extends StatelessWidget {
  const DarkMode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 64, 75, 81),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Dark Mode'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/new_note_screen');
            },
            icon: SvgPicture.asset(
              'assets/svgs/arrow-right.svg',
              color: Colors.white,
              width: 25,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          RadioListTile(
            title: const Text(
              'Enabel',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            value: 'E',
            groupValue: 'E',
            onChanged: (value) {},
          ),
          RadioListTile(
            title: const Text(
              'Disable',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            value: 'E',
            groupValue: 'D',
            onChanged: (value) {},
          ),
          RadioListTile(
            title: const Text(
              'System Setting',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            value: 'E',
            groupValue: 'S',
            onChanged: (value) {},
          )
        ],
      ),
    );
  }
}
