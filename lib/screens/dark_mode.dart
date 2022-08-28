import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DarkMode extends StatelessWidget {
  const DarkMode({Key? key}) : super(key: key);
  // String _selectedMode = 'E';

  @override
  Widget build(BuildContext context) {
    String _selectedMode = 'E';
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
              Navigator.pushNamed(context, '/main_screen');
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
          RadioListTile<String>(
            title: const Text(
              'Enabel',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            value: 'E',
            groupValue: _selectedMode,
            onChanged: (value) {
              if (value != null) {
                _selectedMode = value;
              }
            },
          ),
          RadioListTile<String>(
            title: const Text(
              'Disable',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            value: 'D',
            groupValue: _selectedMode,
            onChanged: (value) {},
          ),
          RadioListTile<String>(
            title: const Text(
              'System Setting',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            value: 'N',
            groupValue: _selectedMode,
            onChanged: (value) {
              if (value != null) {}
            },
          )
        ],
      ),
    );
  }
}
