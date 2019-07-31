import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Profile extends StatelessWidget {

  final Map profile;
  Profile(this.profile);




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  expandedHeight: 400.0,
                  floating: false,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                      centerTitle: false,
                      title: Text(profile['name'].toString()+profile['suname'],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          )),
                      background: Image.asset(
                        "assets/Jobs.jpg",
                      )),
                ),
              ];
            },
            body:  Container(
              color: Colors.white,
              child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text(profile['phonnumber'].toString()),
                  subtitle: Text("Mobile"),
                ),
//                ListTile(
//                  title: Text("(+374)23655778"),
//                  subtitle: Text("Work"),
//                  leading: Icon(Icons.phone),
//                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.local_post_office),
                  title: Text(profile['email']),
                  subtitle: Text("Personal"),
                ),
                ListTile(
                  leading: Icon(Icons.calendar_today),
                  title: Text(DateFormat('yyy,MM,dd').format(profile['borthday']).toString()),
                  subtitle: Text("Borthday"),
                ),
                ListTile(
                  leading: Icon(Icons.wc),
                  title: Text(profile['gender'].toString()),
                  subtitle: Text("Your gender"),
                ),
                ListTile(
                  leading: Icon(Icons.group),
                  title: Text(profile['married'] ? 'Married': 'Not married'),
                  subtitle: Text("Releyshion sheep status"),
                ),


            Divider(),


        ],




            ),)));
  }
}




