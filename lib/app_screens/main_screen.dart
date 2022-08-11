import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Text('To Do List'),
        actions: [
          Row(
            children: [
              PopupMenuButton(
                  icon: const Icon(Icons.list),
                  onSelected: (value) => debugPrint('$value'),
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                        onTap: () {},
                        value: 'sort',
                        child: const Text('Sort by'),
                      ),
                      PopupMenuItem(
                        onTap: () {},
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
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.developer_mode),
              ),
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
          label: const Text('data'),
          icon: const Icon(Icons.add)),
    );
  }
}
