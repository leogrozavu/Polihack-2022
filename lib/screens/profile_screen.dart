import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poli_app/screens/map_screen.dart';

import '../model/points.dart';

class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => mappage()),
              );
            },
            backgroundColor: Colors.transparent,
            elevation: 0,
            child: Icon(Icons.arrow_back)),
      ),
      body: Column(children: [
        Expanded(
            flex: 2,
            child: Container(
              constraints: BoxConstraints.expand(),
              color: Color(0xff49e669),
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://resources.premierleague.com/premierleague/photos/players/250x250/p14937.png'),
                    radius: 100,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Olteanu Luca',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            )),
        Expanded(
          flex: 2,
          child: Container(
            constraints: BoxConstraints.expand(),
            color: Color(0xff49e669),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 7,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      Text(
                        'Points: $points',
                        style: GoogleFonts.inika(fontSize: 33),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Joined in: 12/11/2022',
                        style: GoogleFonts.inika(fontSize: 33),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Garbage thrown: 43',
                        style: GoogleFonts.inika(fontSize: 33),
                      ),
                    ],
                  ),
                )),
          ),
        ),
      ]),
    );
  }
}
