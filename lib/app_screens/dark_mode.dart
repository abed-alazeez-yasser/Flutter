import 'package:flutter/material.dart';

class DarkMode extends StatelessWidget {
  const DarkMode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 64, 75, 81),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Dark Mode'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          RadioListTile(
            title: const Text('Enabel'),
            value: 'E',
            groupValue: 'E',
            onChanged: (value) {},
          ),
          const SizedBox(
            height: 16,
          ),
          RadioListTile(
            title: const Text('Disable'),
            value: 'D',
            groupValue: 'D',
            onChanged: (value) {},
          ),
          const SizedBox(
            height: 16,
          ),
          RadioListTile(
            title: const Text('System Setting'),
            value: 'S',
            groupValue: 'S',
            onChanged: (value) {},
          )
        ],
      ),
    );
  }
}
