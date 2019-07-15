import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final name;
  final surname;
  final email;
  final post;
  final phonNumber;
  final borthday;
  final Location;
  final profashion;
  final hobby;

  Profile(this.name, this.surname, this.email, this.post, this.phonNumber,
      this.borthday, this.Location, this.profashion, this.hobby);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body:Column(children:<Widget>[ Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            height: 120.0,
            width: 100.0,
            child: Image.asset('assets/image.png'),
          ),
          Container(margin: EdgeInsets.all(25.0),child:
          Column(
              children: <Widget>[
            Text(name, style: TextStyle(fontWeight: FontWeight.bold,fontStyle:FontStyle.italic )),
            Text(surname, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(email, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(post.toString(), style: TextStyle(fontWeight: FontWeight.bold)),
            Text(phonNumber.toString(), style: TextStyle(fontWeight: FontWeight.bold)),
            Text(borthday, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(Location, style: TextStyle(fontWeight: FontWeight.bold),),
            Text(profashion, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(hobby, style: TextStyle(fontWeight: FontWeight.bold))
          ])),




    ],
      ),
      Text(' $name')
      ]),


    );
  }
}
