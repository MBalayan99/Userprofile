import 'package:flutter/material.dart';
import './profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registration',
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name;
  String suname;
  String email;
  int post;
  int phoneNamber;
  String borthday;
  String Location;
  String relationStatus;
  String profashion;
  String hobby;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Registration'),
        ),
        body: Container(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: ListView(children: <Widget>[
            TextField(
              decoration: new InputDecoration(labelText: "Name"),
              onChanged: (String value) {
                setState(() {
                  name = value;
                });
              },
            ),
            TextField(
              decoration: new InputDecoration(labelText: "Suname"),
              onChanged: (String value) {
                setState(() {
                  suname = value;
                });
              },
            ),
            TextField(
              decoration: new InputDecoration(labelText: "email address"),
              onChanged: (String value) {
                setState(() {
                  email = value;
                });
              },
            ),
            TextField(
              decoration: new InputDecoration(labelText: "Post index"),
              keyboardType: TextInputType.number,
              onChanged: (String value) {
                setState(() {
                  post = int.parse(value);
                });
              },
            ),
            TextField(
              decoration: new InputDecoration(labelText: "Borthday"),
              onChanged: (String value) {
                setState(() {
                  borthday = value;
                });
              },
            ),
            TextField(
              decoration: new InputDecoration(labelText: "Location"),
              onChanged: (String value) {
                setState(() {
                  Location = value;
                });
              },
            ),
            TextField(
              decoration: new InputDecoration(labelText: "Phone number"),
              keyboardType: TextInputType.number,
              onChanged: (String value) {
                setState(() {
                  phoneNamber = int.parse(value);
                });
              },
            ),
            TextField(
              decoration: new InputDecoration(labelText: "relationStatus"),
              onChanged: (String value) {
                setState(() {
                  relationStatus = value;
                });
              },
            ),

            TextField(
              decoration: new InputDecoration(labelText: "Profession"),
              onChanged: (String value) {
                setState(() {
                  profashion = value;
                });
              },
            ),
            TextField(
              decoration: new InputDecoration(labelText: "Hobby"),
              onChanged: (String value) {
                setState(() {
                  hobby = value;
                });
              },
            ),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => Profile(
                        name,
                        suname,
                        email,
                        post,
                        phoneNamber,
                        borthday,
                        Location,
                        profashion,
                        hobby)));
          },
          child: Icon(Icons
              .add), // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }
}
