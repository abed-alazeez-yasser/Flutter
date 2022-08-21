//commit 13/8/2022
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const  Color.fromARGB(255, 64, 75, 81),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('To Do List',
            style: TextStyle(color: Colors.white, fontSize: 20)),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/svgs/code.svg',
                  color: Colors.white,
                  width: 25,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              PopupMenuButton(
                  icon: SvgPicture.asset(
                    'assets/svgs/dots.svg',
                    color: Colors.white,
                    width: 25,
                  ),
                  onSelected: (value) => debugPrint('$value'),
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                        onTap: () {},
                        value: 'sort',
                        child: const Text('Sort by'),
                      ),
                      PopupMenuItem(
                        onTap: () {
                          Navigator.pop(
                            context,
                          );
                          Navigator.pushNamed(context, '/setting_screen');
                        },
                        value: 'setting',
                        child: const Text('more Setting'),
                      ),
                      PopupMenuItem(
                        onTap: () {},
                        value: 'item 3 ',
                        child: const Text('item 3'),
                      ),
                      PopupMenuItem(
                        onTap: () {},
                        value: 'item 3 ',
                        child: const Text('item 3'),
                      ),
                    ];
                  }),
            ],
          ),
        ],
      ),
      //end of appbar
      body: SingleChildScrollView(
        child: Container(
          color: const Color.fromARGB(255, 64, 75, 81),
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text('ADD Task'),
          icon: const Icon(Icons.add)),
    );
  }
}
