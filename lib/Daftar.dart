import 'package:flutter/material.dart';
//import 'package:flutter_application_5/main.dart';
import 'package:flutter_application_5/AuthClass.dart';

TextEditingController Form_username = TextEditingController();
TextEditingController Form_password = TextEditingController();

class Daftar extends StatefulWidget {
  const Daftar({super.key});

  @override
  State<Daftar> createState() => _Daftar();
}

class _Daftar extends State<Daftar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("halaman pendaftaran"),
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
                padding: EdgeInsets.all(1.0),
                child: TextFormField(
                  // controller: Form_password,
                  decoration: InputDecoration(
                    labelText: 'Nama Lengkap',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0)),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(1.0),
                child: TextFormField(
                  // controller: Form_password,
                  decoration: InputDecoration(
                    labelText: 'nomor wa',
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
                      Navigator.pop(context);
                      //   Route route =
                      //       MaterialPageRoute(builder: (context) => Daftar());
                      //   Navigator.push(context, route);
                    },
                    child: Text("register")),
              ),
            ],
          ),
        ));
  }
}
