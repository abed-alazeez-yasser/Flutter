import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onbording/Helpers/helpers.dart';
import 'package:onbording/providers/note_provider.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with Helpers {
  // final ScrollController _scrollController = ScrollController();

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
        elevation: 0,
        title: const Text('To Do List',
            style: TextStyle(color: Colors.white, fontSize: 20)),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext contetext) {
                      return const DevAlert();
                    },
                  );
                },
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
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          onTap: () =>
                              Navigator.pushNamed(context, '/setting_screen'),
                          child: const Text('Sort by'),
                        ),
                        PopupMenuItem(
                          onTap: () {
                            Navigator.pushNamed(context, '/setting_screen');
                          },
                          child: ElevatedButton(
                              child: const Text('More Setting'),
                              onPressed: () {
                                Navigator.pushNamed(context, '/setting_screen');
                              }),
                        ),
                        PopupMenuItem(
                          onTap: () {},
                          child: const Text('Unselected oll tasks'),
                        ),
                        PopupMenuItem(
                          onTap: () {},
                          child: const Text('Remove oll Items'),
                        ),
                      ]),
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

class DevAlert extends StatelessWidget {
  const DevAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: SvgPicture.asset(
                  'assets/svgs/flutter.svg',
                ),
              ),
              const SizedBox(height: 10),
              Title(
                color: Colors.black,
                child: const Text('Flutter Project'),
              ),
              const Text('Abed Alazeez Yasser'),
              const Divider(
                color: Colors.grey,
                thickness: 1,
                endIndent: 10,
                indent: 10,
              ),
              const ListTile(
                leading: Icon(Icons.co2_outlined),
                title: Text(
                  'Lorem Ipsum the printing Lorem Ipsum is simply dummy text of the printing ',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.ac_unit_rounded),
                title: Text(
                  'Lorem Ipsum  of the printing Lorem Ipsum is simply dummy text of the printing ',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.access_alarms_outlined),
                title: Text(
                  'Lorem Ipsum is simply dummy text of the printing ',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 51, 62, 70),
                    shadowColor: const Color.fromARGB(255, 64, 75, 81),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  child: const Text('Done'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
