import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:note_app/views/auth/register_page.dart';
import 'package:note_app/views/main/home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

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
                      "Let's Get You In",
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
                          controller: _emailController,
                          style: TextStyle(fontSize: 14),
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.email,
                                size: 22,
                              ),
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
                              prefixIcon: Icon(
                                Icons.shield,
                                size: 22,
                              ),
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
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(5)),
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Text(
                              "Login",
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterPage()));
                      },
                      child: Text(
                        "Register",
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
