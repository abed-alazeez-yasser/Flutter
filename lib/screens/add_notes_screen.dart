import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onbording/Helpers/helpers.dart';
import 'package:onbording/models/note.dart';
import 'package:onbording/providers/note_provider.dart';
import 'package:provider/provider.dart';

class AddNotes extends StatefulWidget {
  const AddNotes({Key? key}) : super(key: key);

  @override
  State<AddNotes> createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> with Helpers {
  late TextEditingController _contentTextController;

  @override
  void initState() {
    super.initState();
    _contentTextController = TextEditingController();
  }

  @override
  void dispose() {
    _contentTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 64, 75, 81),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
        title: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/main_screen');
            performSave();
          },
          icon: SvgPicture.asset(
            'assets/svgs/arrow-left.svg',
            color: Colors.white,
            width: 25,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/svgs/alarm.svg',
                    color: Colors.white,
                    width: 25,
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/main_screen');
                      performSave();
                    },
                    icon: const Text(
                      'save',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    )),
                const SizedBox(
                  width: 20,
                )
              ],
            ),
          ),
        ],
      ),
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: [
          TextField(
            controller: _contentTextController,
            decoration: const InputDecoration(
              hintText: 'Enter Note',
              fillColor: Colors.white,
            ),
            minLines: 200,
            maxLines: 300,
          ),
        ],
      ),
    );
  }

  Future<void> performSave() async {
    if (checkData()) {
      await save();
    }
  }

  bool checkData() {
    if (_contentTextController.text.isNotEmpty) {
      return true;
    }
    ShowSnakBar(context: context, message: 'Enter requer data', error: true);
    return false;
  }

  Future<void> save() async {
    bool created = await Provider.of<NoteProvider>(context, listen: false)
        .create(note: note);
    String Message = created ? 'created sucsses ' : 'feild';
    ShowSnakBar(context: context, message: Message, error: false);
  }

  Note get note {
    Note newNote = Note();
    newNote.content = _contentTextController.text;
    return newNote;
  }
}
