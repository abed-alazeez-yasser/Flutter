import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//commit 13/8/2022
class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Text('More Setting'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
        ],
      ),
      // end of appbar
      body: Column(
        children: [
          ListTile(
            title: const Text('Dark Theam'),
            trailing: SvgPicture.asset('asseta/svgs/dark.svg'),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 2,
          ),
          ListTile(
            title: const Text('Contact Us'),
            trailing: SvgPicture.asset('asseta/svgs/telephone.svg'),
          ),
          const Divider(),
          ListTile(
            title: const Text('other apps'),
            trailing: SvgPicture.asset('asseta/svgs/google.svg'),
          ),
        ],
      ),
    );
  }
}
