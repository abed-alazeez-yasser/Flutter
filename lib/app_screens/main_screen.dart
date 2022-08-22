//commit 13/8/2022
import 'package:flutter/material.dart';
import 'package:flutter_scrolling_fab_animated/flutter_scrolling_fab_animated.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 64, 75, 81),
        appBar: AppBar(
          automaticallyImplyLeading: false,
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
                            Navigator.pushNamed(context, '/setting_screen');
                          },
                          value: 'setting',
                          child: const Text('more Setting'),
                        ),
                        PopupMenuItem(
                          onTap: () {},
                          value: 'item 3 ',
                          child: const Text('Unselected oll tasks'),
                        ),
                        PopupMenuItem(
                          onTap: () {},
                          value: 'item 3 ',
                          child: const Text('Remove oll Items'),
                        ),
                      ];
                    }),
              ],
            ),
          ],
        ),
        //end of appbar
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Container(
            color: const Color.fromARGB(255, 64, 75, 81),
            child: Center(
              child: Column(
                children: const [
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ColoredBox(color: Colors.white),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ColoredBox(color: Colors.white),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ColoredBox(color: Colors.white),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ColoredBox(color: Colors.white),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ColoredBox(color: Colors.white),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ColoredBox(color: Colors.white),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ColoredBox(color: Colors.white),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ColoredBox(color: Colors.white),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ColoredBox(color: Colors.white),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ColoredBox(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: ScrollingFabAnimated(
          icon: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          text: const Text(
            'Add',
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
          onPress: () {},
          scrollController: _scrollController,
          animateIcon: true,
          inverted: false,
        ));
  }
}
