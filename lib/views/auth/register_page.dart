import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:note_app/views/auth/login_page.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

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
            child: Stack(
              children: <Widget>[
                Text(
                  "NOTE APP",
                  style: TextStyle(letterSpacing: 2),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Create An Account",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Form(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        TextFormField(
                          controller: _nameController,
                          style: TextStyle(fontSize: 14),
                          decoration: InputDecoration(
                              hintText: "Full Name",
                              hintStyle:
                                  TextStyle(fontSize: 14, letterSpacing: 1),
                              border: OutlineInputBorder(),
                              isDense: true),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: _emailController,
                          style: TextStyle(fontSize: 14),
                          decoration: InputDecoration(
                              hintText: "Email",
                              hintStyle:
                                  TextStyle(fontSize: 14, letterSpacing: 1),
                              border: OutlineInputBorder(),
                              isDense: true),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: _passwordController,
                          style: TextStyle(fontSize: 14),
                          decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle:
                                  TextStyle(fontSize: 14, letterSpacing: 1),
                              border: OutlineInputBorder(),
                              isDense: true),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Ink(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(5)),
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Text(
                              "Register",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  letterSpacing: 1),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ],
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                            (route) => false);
                      },
                      child: Text(
                        "Login",
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
