import 'package:flutter/material.dart';
//commit 13/8/2022
class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Text('more setting '),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
          ),
        ],
      ),
      // end of appbar
      body: Column(
        
      ),
    );
  }
}
