// ignore_for_file: unnecessary_string_escapes

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:poli_app/screens/help_screen.dart';
import 'package:poli_app/screens/profile_screen.dart';
import 'package:poli_app/screens/qrscan_screen.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../model/points.dart';
import 'offers_screen.dart';

class mappage extends StatefulWidget {
  const mappage({super.key});

  @override
  State<mappage> createState() => _mappageState();
}

class _mappageState extends State<mappage> {
  LatLng _initialcameraposition = LatLng(46.78288173771506, 23.607945226037195);

  BitmapDescriptor markerIcon = BitmapDescriptor.defaultMarker;

  void initState() {
    super.initState();
    addCustomIcon();
  }

  void addCustomIcon() {
    BitmapDescriptor.fromAssetImage(
            const ImageConfiguration(), "assets/recycle-bin.png")
        .then(
      (icon) {
        setState(() {
          markerIcon = icon;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
        extendBodyBehindAppBar: true,
        key: scaffoldKey,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Builder(
              builder: (BuildContext context) {
                return FloatingActionButton(
                  backgroundColor: Colors.green,
                  elevation: 0,
                  child: const Icon(
                    Icons.water,
                    color: Colors.white, // Change Custom Drawer Icon Color
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
            actions: [
              FloatingActionButton(
                  elevation: 0,
                  child: Icon(Icons.qr_code_2),
                  backgroundColor: Colors.green,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const scanPage()),
                    );
                  }),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                  padding: EdgeInsets.all(0),
                  child: Container(
                      color: Colors.green,
                      child: Row(
                        children: [
                          SizedBox(width: 15),
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://resources.premierleague.com/premierleague/photos/players/250x250/p14937.png'),
                            radius: 45,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Luca Olteanu",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                              Text(
                                '$points points',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ))),
              SizedBox(height: 20),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Profile'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => profilePage()),
                  );
                },
              ),
              SizedBox(height: 40),
              ListTile(
                leading: const Icon(Icons.local_offer),
                title: const Text('Offers'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const offers()),
                  );
                },
              ),
              SizedBox(height: 40),
              ListTile(
                leading: const Icon(Icons.help),
                title: const Text('Help'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const helpPage()),
                  );
                },
              ),
            ],
          ),
        ),
        body: SlidingUpPanel(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(40.0),
            topLeft: Radius.circular(40.0),
          ),
          minHeight: 75,
          maxHeight: 700,
          color: Colors.green,
          panel: Center(
              child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: const Text(
                  "EcoNews",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Container(
                height: 190,
                margin: EdgeInsets.only(top: 20),
                child: ClipRRect(
                    //height: 180,
                    //decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    //margin: const EdgeInsets.only(top: 20),
                    child: Image.asset('assets/bus.jpg')),
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                height: 60,
                width: 300,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color: Colors.white,
                ),
                child: const Center(
                    child: Text("15 troleibuze electrice noi Cluj",
                        style: TextStyle(fontSize: 20))),
              ),
              Container(
                height: 190,
                margin: EdgeInsets.only(top: 20),
                child: ClipRRect(
                    //height: 180,
                    //decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    //margin: const EdgeInsets.only(top: 20),
                    child: Image.asset('assets/fire.jpg')),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 60,
                width: 300,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color: Colors.white,
                ),
                child: Center(
                    child: Text("Incendiu deseuri langa Cluj",
                        style: TextStyle(fontSize: 20))),
              ),
            ],
          )),
          body: GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition:
                  CameraPosition(target: _initialcameraposition, zoom: 15),
              zoomControlsEnabled: false,
              markers: {
                Marker(
                  markerId: MarkerId('1'),
                  position: LatLng(46.78288173771506, 23.607945226037195),
                  icon: markerIcon,
                ),
                Marker(
                  markerId: MarkerId('2'),
                  position: LatLng(46.7824472899354, 23.614510383089485),
                  icon: markerIcon,
                ),
                Marker(
                  markerId: MarkerId('3'),
                  position: LatLng(46.76924018348484, 23.590902634187405),
                  icon: markerIcon,
                ),
                Marker(
                  markerId: MarkerId('4'),
                  position: LatLng(46.77235087864576, 23.589537556109544),
                  icon: markerIcon,
                ),
                Marker(
                  markerId: MarkerId('5'),
                  position: LatLng(46.77398324355414, 23.592397639228107),
                  icon: markerIcon,
                ),
                Marker(
                  markerId: MarkerId('6'),
                  position: LatLng(46.76944789457804, 23.597965423143787),
                  icon: markerIcon,
                ),
                Marker(
                  markerId: MarkerId('7'),
                  position: LatLng(46.76982146351551, 23.577453881103708),
                  icon: markerIcon,
                ),
                Marker(
                  markerId: MarkerId('8'),
                  position: LatLng(46.7637452331017, 23.577056122603093),
                  icon: markerIcon,
                ),
                Marker(
                  markerId: MarkerId('9'),
                  position: LatLng(46.77486187003641, 23.578455642772752),
                  icon: markerIcon,
                ),
                Marker(
                  markerId: MarkerId('10'),
                  position: LatLng(46.77040139782383, 23.566558547242096),
                  icon: markerIcon,
                )
              }),
        ));
  }
}
