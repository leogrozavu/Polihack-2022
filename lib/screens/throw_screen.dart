import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poli_app/screens/reward_screen.dart';

class throwGarbage extends StatefulWidget {
  const throwGarbage({super.key});

  @override
  State<throwGarbage> createState() => _throwGarbageState();
}

class _throwGarbageState extends State<throwGarbage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AltaPagina()),
              );
            },
            backgroundColor: Colors.green,
            child: Icon(Icons.arrow_back)),
      ),
      body: SafeArea(
        child: Column(children: [
          SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 10,
          ),
          CircularCountDownTimer(
              autoStart: true,
              width: 220,
              height: 220,
              duration: 60,
              fillColor: Color(0xff24de13),
              ringColor: Color(0xff9bff80),
              onComplete: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AltaPagina()),
                );
              }),
          SizedBox(
            height: 35,
          ),
          Center(
            child: Text(
              'Put the garbage in the bin',
              style: GoogleFonts.inika(fontSize: 30),
            ),
          ),
          Center(
            child: Text(
              'until the time expires',
              style: GoogleFonts.inika(fontSize: 30),
            ),
          ),
          SizedBox(
            height: 90,
          ),
          SizedBox(
            width: 200,
            height: 75,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 30),
                primary: Color(0xff45b871),
                onPrimary: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AltaPagina()),
                );
              },
              child: const Text('Submit'),
            ),
          ),
        ]),
      ),
    );
  }
}
