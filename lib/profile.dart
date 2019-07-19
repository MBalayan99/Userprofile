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
                      title: Text("Steve Jobs",
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
            body: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("(374)34562346"),
                  subtitle: Text("Mobile"),
                ),
                ListTile(
                  title: Text("(374)236557745"),
                  subtitle: Text("Work"),
                  leading: Icon(Icons.phone),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.local_post_office),
                  title: Text("ali.connors@example.com"),
                  subtitle: Text("Personal"),
                )
              ],
            )));
  }
}

