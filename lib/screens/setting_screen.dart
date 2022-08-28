import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 64, 75, 81),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('More Setting'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/dark_screen');
            },
            icon: SvgPicture.asset(
              'assets/svgs/arrow-right.svg',
              color: Colors.white,
              width: 25,
            ),
          ),
        ],
      ),
      // end of appbar
      body: Column(
        children: [
          ListTile(
            title: Row(
              children: [
                SvgPicture.asset('assets/svgs/dark.svg',
                    color: Colors.white, width: 25),
                const SizedBox(
                  width: 10,
                ),
                const Text('Dart Setting',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ],
            ),
            onTap: () {
              Navigator.pushNamed(context, '/dark_screen');
            },
          ),
          const Divider(
            color: Colors.grey,
            thickness: 2,
          ),
          ListTile(
            title: Row(
              children: [
                SvgPicture.asset('assets/svgs/google.svg',
                    color: Colors.white, width: 25),
                const SizedBox(
                  width: 10,
                ),
                const Text('Other apps',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ],
            ),
            onTap: () {
              Navigator.pushNamed(context, '/dark_screen');
            },
          ),
          const Divider(
            color: Colors.grey,
            thickness: 2,
          ),
          ListTile(
            title: Row(
              children: [
                SvgPicture.asset('assets/svgs/telephone.svg',
                    color: Colors.white, width: 25),
                const SizedBox(
                  width: 10,
                ),
                const Text('Contact Us',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ],
            ),
            onTap: () {
              Navigator.pushNamed(context, '/dark_screen');
            },
          ),
        ],
      ),
    );
  }
}
