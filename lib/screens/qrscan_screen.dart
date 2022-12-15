import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poli_app/screens/reward_screen.dart';
import 'package:poli_app/screens/throw_screen.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class scanPage extends StatefulWidget {
  const scanPage({super.key});

  @override
  State<scanPage> createState() => _scanPageState();
}

class _scanPageState extends State<scanPage> {
  final GlobalKey _gLobalkey = GlobalKey();
  QRViewController? controller;
  Barcode? result;
  void qr(QRViewController controller) {
    controller.resumeCamera();
    this.controller = controller;
    controller.scannedDataStream.listen((event) {
      controller.pauseCamera();
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const throwGarbage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xff49e669),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            Text(
              "Scan the QR code",
              style: GoogleFonts.oswald(fontSize: 40, color: Colors.white),
            ),
            SizedBox(
              height: 45,
            ),
            Container(
              height: 300,
              width: 300,
              child: QRView(
                key: _gLobalkey,
                onQRViewCreated: qr,
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              margin: const EdgeInsets.all(8),
              child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () async {
                    await controller?.toggleFlash();
                    setState(() {});
                  },
                  child: FutureBuilder(
                    future: controller?.getFlashStatus(),
                    builder: (context, snapshot) {
                      return Icon(Icons.flashlight_on, color: Colors.green);
                    },
                  )),
            ),
            SizedBox(
              height: 30,
            ),
          ]),
        ),
      )),
    );
  }
}
