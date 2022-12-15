import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poli_app/screens/voucher_screen.dart';

import '../model/points.dart';
import 'map_screen.dart';

class offers extends StatelessWidget {
  const offers({super.key});

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
      body: Container(
        color: Colors.green,
        child: ListView(children: [
          Container(
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
                      height: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          'Shoefoot 20% voucher',
                          style: GoogleFonts.inika(fontSize: 28),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: (() {
                            count = count - 750;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => voucher()),
                            );
                          }),
                          child: Text("Buy 750"),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          Container(
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
                      height: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          'AlexElectronics Voucher',
                          style: GoogleFonts.inika(fontSize: 28),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: (() {
                            count = count - 750;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => voucher()),
                            );
                          }),
                          child: Text("Buy 1018"),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          Container(
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
                      height: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          'Public Transport 1 month',
                          style: GoogleFonts.inika(fontSize: 24),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: (() {
                            count = count - 750;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => voucher()),
                            );
                          }),
                          child: Text("Buy 1000"),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          Container(
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
                      height: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          'FootStore 10% voucher ',
                          style: GoogleFonts.inika(fontSize: 28),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: (() {}),
                          child: Text("Buy 900"),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          Container(
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
                      height: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          'Khaufland 50 ron voucher',
                          style: GoogleFonts.inika(fontSize: 25),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: (() {
                            count = count - 750;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => voucher()),
                            );
                          }),
                          child: Text("Buy 805"),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          Container(
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
                      height: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          'Balt 3 rides',
                          style: GoogleFonts.inika(fontSize: 28),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: (() {
                            count = count - 750;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => voucher()),
                            );
                          }),
                          child: Text("Buy 798"),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
        ]),
      ),
    );
  }
}
