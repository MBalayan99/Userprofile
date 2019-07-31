import 'package:flutter/material.dart';
import './profile.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';

const appName = 'DateTimePickerFormField Example';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  String dropdownValue = 'One';


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
Map<String,dynamic> _profile = {
  "name": null,
  "suname":null,
  "email":null,
  "post":null,
  "phonnumber":null,
  "borthday":null,
 " Location":null,
  "married":false,
  "profashion":null,
  "hobby":null,
  "gender":null,

};
final dateFormat = DateFormat("EEEE, MMMM d, yyyy ");
DateTime date;

  final _formKey = GlobalKey<FormState>();
bool lights = false;

DropdownButton _dropdown() => DropdownButton<String>(
  items: [
    DropdownMenuItem(
      value: "Male",
      child: Row(
        children: <Widget>[
          SizedBox(width: 10),
          Text(
            "Male",
          ),
        ],
      ),
    ),
    DropdownMenuItem(
      value: "Female",
      child:
          Text(
            "Female",
          ),
    ),
  ],
  onChanged: (value) {
    setState(() {
      _profile['gender'] = value;
    });
  },
  hint: Text("Select your gender"),
  value: _profile['gender'],
  isExpanded: true,
);

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
                  _profile['name'] = value;
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
                  _profile['suname'] = value;
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
            _dropdown(),
            TextFormField(
              decoration: new InputDecoration(labelText: "email address"),
              onFieldSubmitted: (String value) {
                setState(() {
                  _profile['email'] = value;
                });
              },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter  email';
                  }
                  return null;
                }

            ),

            Container(
              child: Column(
                children: <Widget>[
                  DateTimePickerFormField(
                    format: dateFormat,
                    dateOnly: true,

                    decoration: InputDecoration(labelText: 'Date'),

                    onChanged: (dt) => setState(() =>_profile['borthday'] = dt),


                  ),
                ],
              ),
            ),


            TextFormField(
              decoration: new InputDecoration(labelText: "Location"),
              onFieldSubmitted: (String value) {
                setState(() {
                  _profile['Location'] = value;
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
                  _profile['phonnumber']= int.parse(value);

                });
              },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter your phone ';
                  }
                  return null;
                }

            ),

            SwitchListTile(
              title: const Text('Maried'),
              value: _profile['married'],
              onChanged: (bool value) {
                setState(() {
                  _profile['married'] = value;
                  print( _profile['married'].toString());


                });
              }
            ),

            TextFormField(
              decoration: new InputDecoration(labelText: "Profession"),
              onFieldSubmitted: (String value) {
                setState(() {
                  _profile['profashion'] = value;
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
                  _profile['hobby'] = value;
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
                        Profile( _profile)

                )); }},
          child: Icon(Icons.assignment_turned_in), // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }



}
