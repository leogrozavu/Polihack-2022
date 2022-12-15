import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poli_app/screens/map_screen.dart';

class helpPage extends StatefulWidget {
  const helpPage({super.key});

  @override
  State<helpPage> createState() => _helpPageState();
}

class _helpPageState extends State<helpPage> {
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
            flex: 1,
            child: Container(
              constraints: BoxConstraints.expand(),
              color: Color(0xff49e669),
              child: Center(
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Text(
                    'HELP',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )),
        Expanded(
          flex: 5,
          child: Container(
            constraints: BoxConstraints.expand(),
            color: Color(0xff49e669),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Step 1: press the QR code in top right of main page',
                          style: GoogleFonts.inika(fontSize: 30),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Step 2: scan the QR code from the bin',
                          style: GoogleFonts.inika(fontSize: 30),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Step 3 : throw the garbage and press SUBMIT',
                          style: GoogleFonts.inika(fontSize: 30),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Step 4 : you are all done and can get back to main page',
                          style: GoogleFonts.inika(fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                )),
          ),
        ),
      ]),
    );
  }
}
