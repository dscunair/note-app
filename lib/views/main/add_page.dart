import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: 20),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        //Delete note here
                      },
                      child: Icon(
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
                            decoration: InputDecoration(hintText: "Note Title"),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
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
