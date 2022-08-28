// //commit 13/8/2022
// import 'package:flutter/material.dart';
// import 'package:flutter_scrolling_fab_animated/flutter_scrolling_fab_animated.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:onbording/Helpers/helpers.dart';
// import 'package:onbording/providers/note_provider.dart';
// import 'package:provider/provider.dart';

// class MainScreen extends StatefulWidget {
//   const MainScreen({Key? key}) : super(key: key);
//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> with Helpers {
//   final ScrollController _scrollController = ScrollController();
//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(Duration.zero, () {
//       Provider.of<NoteProvider>(context).read();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 64, 75, 81),
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         backgroundColor: Colors.transparent,
//         title: const Text('To Do List',
//             style: TextStyle(color: Colors.white, fontSize: 20)),
//         actions: [
//           Row(
//             children: [
//               IconButton(
//                 onPressed: () {},
//                 icon: SvgPicture.asset(
//                   'assets/svgs/code.svg',
//                   color: Colors.white,
//                   width: 25,
//                 ),
//               ),
//               IconButton(
//                 onPressed: () {},
//                 icon: const Icon(Icons.search),
//               ),
//               PopupMenuButton(
//                   icon: SvgPicture.asset(
//                     'assets/svgs/dots.svg',
//                     color: Colors.white,
//                     width: 25,
//                   ),
//                   onSelected: (value) => debugPrint('$value'),
//                   itemBuilder: (context) {
//                     return [
//                       PopupMenuItem(
//                         onTap: () {},
//                         value: 'sort',
//                         child: const Text('Sort by'),
//                       ),
//                       PopupMenuItem(
//                         onTap: () {
//                           Navigator.pushNamed(context, '/setting_screen');
//                         },
//                         value: 'setting',
//                         child: const Text('more Setting'),
//                       ),
//                       PopupMenuItem(
//                         onTap: () {},
//                         value: 'item 3 ',
//                         child: const Text('Unselected oll tasks'),
//                       ),
//                       PopupMenuItem(
//                         onTap: () {},
//                         value: 'item 3 ',
//                         child: const Text('Remove oll Items'),
//                       ),
//                     ];
//                   }),
//             ],
//           ),
//         ],
//       ),
//       //  end of appbar

//       body: Consumer<NoteProvider>(
//         builder: (context, value, child) {
//           if (value.notes.isEmpty) {
//             return Center(
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Icon(
//                     Icons.warning,
//                     size: 80,
//                     color: Colors.grey.shade400,
//                   ),
//                   Text(
//                     'No data',
//                     style: TextStyle(
//                         color: Colors.grey.shade400,
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold),
//                   )
//                 ],
//               ),
//             );
//           } else {
//             return ListView.builder(
//                 itemCount: value.notes.length,
//                 itemBuilder: ((context, index) {
//                   return ListTile(
//                     leading: const Icon(Icons.note),
//                     title: Text(value.notes[index].content),
//                     trailing: IconButton(
//                         onPressed: () {
//                           deleteNote(id: value.notes[index].id);
//                         },
//                         icon: const Icon(Icons.delete)),
//                   );
//                 }));
//           }
//         },
//       ),
//       floatingActionButton: ScrollingFabAnimated(
//         icon: const Icon(
//           Icons.add,
//           color: Colors.white,
//         ),
//         text: const Text(
//           'Add',
//           style: TextStyle(color: Colors.white, fontSize: 16.0),
//         ),
//         onPress: () {
//           Navigator.pushNamed(context, '/add_note_screen');
//         },
//         scrollController: _scrollController,
//         animateIcon: true,
//         inverted: false,
//       ),
//     );
//   }

//   Future<void> deleteNote({required int id}) async {
//     bool deleted =
//         await Provider.of<NoteProvider>(context, listen: false).delete(id: id);
//     String message = deleted ? 'Deleted sucsess' : 'Delete Failed';
//     ShowSnakBar(context: context, message: message, error: !deleted);
//   }
// }

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onbording/Helpers/helpers.dart';
import 'package:onbording/providers/note_provider.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with Helpers {
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      Provider.of<NoteProvider>(context).read();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 64, 75, 81),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 1,
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
      //end App bar
      body: Container(
        color: const Color.fromARGB(255, 64, 75, 81),
        child: Consumer<NoteProvider>(
          builder: (context, value, child) {
            if (value.notes.isEmpty) {
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.warning,
                      size: 80,
                      color: Colors.grey.shade400,
                    ),
                    Text(
                      'No data',
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              );
            } else {
              return ListView.builder(
                  itemCount: value.notes.length,
                  itemBuilder: ((context, index) {
                    return ListTile(
                      leading: const Icon(
                        Icons.note,
                        color: Colors.white,
                      ),
                      title: Text(
                        value.notes[index].content,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      trailing: IconButton(
                          onPressed: () {
                            deleteNote(id: value.notes[index].id);
                          },
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.white,
                          )),
                    );
                  }));
            }
          },
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, '/add_note_screen');
        },
        label: const Text('New Note'),
        icon: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: const Color.fromARGB(255, 39, 48, 55),
      ),
    );
  }

  Future<void> deleteNote({required int id}) async {
    bool deleted =
        await Provider.of<NoteProvider>(context, listen: false).delete(id: id);
    String message = deleted ? 'Deleted sucsess' : 'Delete Failed';
    ShowSnakBar(context: context, message: message, error: !deleted);
  }
}
