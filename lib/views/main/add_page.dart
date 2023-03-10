import 'package:flutter/material.dart';
import 'package:note_app/model/note.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key, this.note});

  final Note? note;

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final TextEditingController _titleController = TextEditingController();

  final TextEditingController _contentController = TextEditingController();

  @override
  void initState() {
    super.initState();

    if (widget.note != null) {
      _titleController.text = widget.note!.title;
      _contentController.text = widget.note!.content;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          minimum: const EdgeInsets.symmetric(horizontal: 20),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        //Delete note here
                      },
                      child: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Form(
                      onChanged: () {
                        //Write save function here
                      },
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            controller: _titleController,
                            decoration:
                                const InputDecoration(hintText: "Note Title"),
                          ),
                          TextFormField(
                            controller: _contentController,
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Write here"),
                            maxLines: null,
                            keyboardType: TextInputType.multiline,
                          )
                        ],
                      ))
                ],
              ),
            ),
          )),
    );
  }
}
