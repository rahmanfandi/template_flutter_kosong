import 'package:flutter/material.dart';
import 'package:flutter_application_5/Daftar.dart';
import 'package:flutter_application_5/AddUser.dart';
import 'package:flutter_application_5/GetUserName.dart';

import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

//FirebaseFirestore firestore = FirebaseFirestore.instance;

FirebaseFirestore firestore = FirebaseFirestore.instance;
FirebaseApp defaultApp = Firebase.app();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Aplikasi'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Kembali'),
        ),
      ),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController Nama = TextEditingController();
  TextEditingController Berat = TextEditingController();
  TextEditingController Tinggi = TextEditingController();

  double berat = 0;
  double tinggi = 0;
  double BMI = 0;

  String form1 = "hasil";

  var date = DateTime.now();
  //AddUser adduser = new AddUser("fullName", "company", 13);

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    //nameController1.text = "yes";
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: ListView(
            //    mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(1.0),
                child: TextFormField(
                  controller: Nama,
                  decoration: InputDecoration(
                    labelText: 'Nama',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0)),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(1.0),
                child: TextFormField(
                  controller: Berat,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Berat Badan',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0)),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(1.0),
                child: TextFormField(
                  controller: Tinggi,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Tinggi Badan',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0)),
                  ),
                ),
              ),
              Container(
                  child: ElevatedButton(
                      onPressed: () {
                        // addUser();

                        //    getDataOnce_getADocument();
                        // set_nilai();
                      },
                      child: Text("hitung BMI"))),
              Container(
                child: ElevatedButton(
                    onPressed: () {
                      Route route =
                          MaterialPageRoute(builder: (context) => Daftar());
                      Navigator.push(context, route);
                    },
                    child: Text("next")),
              ),
              Container(
                child: Text(form1),
              ),
              Container(child: AddUser("joko", "dino", 23)),
              GetUserName("KOk590YmbMVOxeaDfQS8")
            ],
          ),
        ));
  }

  void set_nilai() {
    setState(() {
      berat = double.parse(Berat.text);
      tinggi = double.parse(Tinggi.text);
      BMI = berat / (tinggi * tinggi);

      setState(() {
        form1 = BMI.toString();
      });
    });
  }

  void tambah() {}
}
