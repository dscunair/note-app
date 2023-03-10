import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isEditable = false;

  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: 20),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "YOUR ACCOUNT",
                      style: TextStyle(
                          letterSpacing: 2,
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ),
                    InkWell(
                      onTap: () => setState(() {
                        isEditable = !isEditable;
                      }),
                      child: Text(
                        isEditable ? "Save" : "Edit",
                        style: TextStyle(fontSize: 16, letterSpacing: 2),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Form(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      "Name",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                          isDense: true,
                          border: isEditable
                              ? OutlineInputBorder()
                              : InputBorder.none),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Email",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                          isDense: true,
                          border: isEditable
                              ? OutlineInputBorder()
                              : InputBorder.none),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Password",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                          isDense: true,
                          border: isEditable
                              ? OutlineInputBorder()
                              : InputBorder.none),
                    )
                  ],
                ))
              ],
            ),
          )),
    );
  }
}
