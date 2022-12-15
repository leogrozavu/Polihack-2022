import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poli_app/screens/map_screen.dart';
import 'package:poli_app/screens/throw_screen.dart';

import '../model/points.dart';

class AltaPagina extends StatelessWidget {
  const AltaPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: FloatingActionButton(
            onPressed: () {
              points += 20;
              count++;
              print(count);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const mappage()),
              );
            },
            backgroundColor: Colors.green,
            child: Icon(Icons.arrow_back)),
      ),
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: Text(
              '+20 Points!',
              style: GoogleFonts.inika(fontSize: 60),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Text(
              'Congratulations!',
              style: GoogleFonts.inika(fontSize: 32),
            ),
          ),
          Center(
            child: Text(
              'You helped on saving',
              style: GoogleFonts.inika(fontSize: 32),
            ),
          ),
          Center(
            child: Text(
              'the environment!',
              style: GoogleFonts.inika(fontSize: 32),
            ),
          ),
          SizedBox(
            height: 90,
          ),
        ]),
      ),
    );
  }
}
