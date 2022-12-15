import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'map_screen.dart';
import '../model/points.dart';

class voucher extends StatelessWidget {
  const voucher({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        color: Colors.green,
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
            margin: EdgeInsets.fromLTRB(20, 250, 20, 300),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Column(
                        children: [
                          Text("Voucher sent to",
                              style: TextStyle(fontSize: 28)),
                          Text("leolteanu@gmail.com",
                              style: TextStyle(fontSize: 28))
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green, // Background color
                        ),
                        onPressed: (() {
                          points -= 750;
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => mappage()),
                          );
                        }),
                        child: Text("back to menu"),
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ),
    ));
  }
}
