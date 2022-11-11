import 'package:flutter/material.dart';
//import 'package:flutter_application_5/main.dart';
import 'package:flutter_application_5/AuthClass.dart';
import 'package:flutter_application_5/Daftar.dart';

TextEditingController Form_username = TextEditingController();
TextEditingController Form_password = TextEditingController();

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Daftar();
}

class _Daftar extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Container(
          child: ListView(
            //    mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(1.0),
                child: TextFormField(
                  controller: Form_username,
                  decoration: InputDecoration(
                    labelText: 'username (format_email) fulan@email.com',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0)),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(1.0),
                child: TextFormField(
                  controller: Form_password,
                  decoration: InputDecoration(
                    labelText: 'password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0)),
                  ),
                ),
              ),
              Container(
                child: ElevatedButton(
                    onPressed: () {
                      //("bdui@gmail.com", "123456");
                      // register(Form_username.text, Form_password.text);
                      // Navigator.pop(context);
                      //   Route route =
                      //       MaterialPageRoute(builder: (context) => Daftar());
                      //   Navigator.push(context, route);

                      login(Form_username, Form_password);
                    },
                    child: Text("Sign In")),
              ),
              Container(
                child: ElevatedButton(
                    onPressed: () {
                      //("bdui@gmail.com", "123456");
                      // register(Form_username.text, Form_password.text);
                      // Navigator.pop(context);
                      Route route =
                          MaterialPageRoute(builder: (context) => Daftar());
                      Navigator.push(context, route);
                    },
                    child: Text("Sign UP")),
              ),
            ],
          ),
        ));
  }
}
