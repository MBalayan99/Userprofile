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
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Registration'),
        ),
        body:

          Form( key: _formKey,
              child:
        Container(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: ListView(children: <Widget>[
            TextFormField(
              decoration: new InputDecoration(labelText: "Name"),
              onFieldSubmitted: (String value) {
                setState(() {
                  name = value;
                });
              },
        validator: (value) {
          if (value.isEmpty) {
            return 'Enter some text';
          }
          return null;
        }),
            TextFormField(
              decoration: new InputDecoration(labelText: "Suname"),
              onFieldSubmitted: (String value) {
                setState(() {
                  suname = value;
                });
              },
                validator: (value) {
            if (value.isEmpty) {
            return 'Enter some text';
            }
            return null;
            }
              ,
            ),
            TextFormField(
              decoration: new InputDecoration(labelText: "email address"),
              onFieldSubmitted: (String value) {
                setState(() {
                  email = value;
                });
              },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter  email';
                  }
                  return null;
                }

            ),
            TextFormField(
              decoration: new InputDecoration(labelText: "Post index"),
              keyboardType: TextInputType.number,
              onFieldSubmitted: (String value) {
                setState(() {
                  post = int.parse(value);
                });
              },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter post index';
                  }
                  return null;
                }
            ),
            TextFormField(
              decoration: new InputDecoration(labelText: "Borthday"),
              onFieldSubmitted: (String value) {
                setState(() {
                  borthday = value;
                });
              },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter   your borthday';
                  }
                  return null;
                }
            ),
            TextFormField(
              decoration: new InputDecoration(labelText: "Location"),
              onFieldSubmitted: (String value) {
                setState(() {
                  Location = value;
                });
              },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter your location ';
                  }
                  return null;
                }
            ),
            TextFormField(
              decoration: new InputDecoration(labelText: "Phone number"),
              keyboardType: TextInputType.number,
              onFieldSubmitted: (String value) {
                setState(() {
                  phoneNamber = int.parse(value);
                });
              },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter your phone ';
                  }
                  return null;
                }

            ),
            TextFormField(
              decoration: new InputDecoration(labelText: "relationStatus"),
              onFieldSubmitted: (String value) {
                setState(() {
                  relationStatus = value;
                });
              },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter some text';
                  }
                  return null;
                }

            ),

            TextFormField(
              decoration: new InputDecoration(labelText: "Profession"),
              onFieldSubmitted: (String value) {
                setState(() {
                  profashion = value;
                });
              },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter your profession';
                  }
                  return null;
                }

            ),
            TextFormField(
              decoration: new InputDecoration(labelText: "Hobby"),
              onFieldSubmitted: (String value) {
                setState(() {
                  hobby = value;
                });
              },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter your hobby';
                  }
                  return null;
                }
            ),
          ]),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {  if (_formKey.currentState.validate()) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) =>
                        Profile(
                            name,
                            suname,
                            email,
                            post,
                            phoneNamber,
                            borthday,
                            Location,
                            profashion,
                            hobby)));
          }},
          child: Icon(Icons
              .add), // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }
}
