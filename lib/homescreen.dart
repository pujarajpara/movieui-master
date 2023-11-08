import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const platform = MethodChannel('samples.flutter.dev/battery');
  String _batteryLevel = 'Unknown level.';
  Future<void> _getBatteryLevel() async {
    String batteryLevel;
    try {
      final result = await platform.invokeMethod<int>('getBatteryLevel');
      batteryLevel = 'Battery level at $result % .';
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery: '${e.message}'.";
    }

    setState(() {
      _batteryLevel = batteryLevel;
    });
  }

  int selectedIconIndex = 0;

  void onIconTapped(int index) {
    setState(() {
      selectedIconIndex = index;
    });
  }

  final List<String> imageUrls = [
    'https://th.bing.com/th/id/OIP.HsBRitTHTPgXwMPyA_hvtgHaK-?w=202&h=300&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    'https://th.bing.com/th/id/OIP.gF--XR-CwFzNmC-zfsJD1QHaKu?w=202&h=293&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    'https://th.bing.com/th/id/OIP.1umjRUVLTbPQCPVU_q1HPgHaK-?w=202&h=300&c=7&r=0&o=5&dpr=1.3&pid=1.7', // Add more image URLs to the list
    'https://th.bing.com/th/id/OIP.ySxso1bM_WHa-dn11LBfvQHaLZ?w=201&h=310&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    'https://th.bing.com/th/id/OIP.aw_qQbHeEZ1rWyjYgoni7gHaKs?w=202&h=293&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    'https://th.bing.com/th/id/OIP.XOugsKNUGzgs3r441K3Y4gHaLG?w=202&h=303&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    'https://th.bing.com/th/id/OIP.Eo0lqoDoRhb_FYoaqIUvdwHaLH?w=202&h=303&c=7&r=0&o=5&dpr=1.3&pid=1.7'
  ];

  final List<String> imageUrls1 = [
    'https://th.bing.com/th/id/OIP.pteooi63gbSP4lbR2HjcGAAAAA?w=202&h=303&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    'https://th.bing.com/th/id/OIP.JbL36Ak6FwaF-GsbEAKPbQHaKJ?w=202&h=277&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    'https://th.bing.com/th/id/OIP.rQR-mps2cTm_qq6EHgrGxAAAAA?w=202&h=302&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    'https://th.bing.com/th/id/OIP.h00SSohWz4TTHNekV9UliAHaJ3?w=202&h=269&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    'https://th.bing.com/th/id/OIP.zhK-xPriPGp-GMlJDWzbvwHaLN?w=202&h=305&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    'https://th.bing.com/th/id/OIP.rQR-mps2cTm_qq6EHgrGxAAAAA?w=202&h=302&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    'https://th.bing.com/th/id/OIP.Eo0lqoDoRhb_FYoaqIUvdwHaLH?w=202&h=303&c=7&r=0&o=5&dpr=1.3&pid=1.7'
  ];

  final List<String> imageUrls2 = [
    'https://th.bing.com/th/id/OIP.XyDu5ifnotjEER_jpUE0pgHaKm?w=202&h=290&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    'https://th.bing.com/th/id/OIP.3xofqXlDejAxgBAejoBg8AAAAA?w=202&h=300&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    'https://th.bing.com/th/id/OIF.pttbZrY0nS8mCgePCfq5Pg?w=202&h=259&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    'https://th.bing.com/th?id=OIF.1KCWAyC1HzTfy6%2fCErus6Q&w=202&h=290&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    'https://th.bing.com/th/id/OIF.B9Slf0ARpGrvt7qRplww2A?w=202&h=303&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    'https://th.bing.com/th/id/OIP.Eo0lqoDoRhb_FYoaqIUvdwHaLH?w=202&h=303&c=7&r=0&o=5&dpr=1.3&pid=1.7'
        'https://th.bing.com/th/id/OIP.1umjRUVLTbPQCPVU_q1HPgHaK-?w=202&h=300&c=7&r=0&o=5&dpr=1.3&pid=1.7', // Add more image URLs to the list
    'https://th.bing.com/th/id/OIP.XOugsKNUGzgs3r441K3Y4gHaLG?w=202&h=303&c=7&r=0&o=5&dpr=1.3&pid=1.7',
  ];
  Widget buildIcon(int index, String imageAsset, String label) {
    final isSelected = selectedIconIndex == index;
    final size = isSelected ? 36.0 : 24.0; // Adjust the initial size as needed

    return GestureDetector(
      onTap: () => onIconTapped(index),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300), // Adjust the animation duration
        width: isSelected ? 72.0 : 70.0, // Increase the width when selected
        height: isSelected ? 72.0 : 70.0, // Increase the height when selected
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: isSelected
              ? LinearGradient(
                  colors: [
                    Color(0xFF6b4da2),
                    Color(0xFF775ea6),
                    Color(0xFF7f5ead)
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                )
              : null,
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: Colors.tealAccent.withOpacity(1.0), // Shadow color
                    offset: Offset(-2,
                        -4), // Offset to control the shadow's position (from the top)
                    blurRadius: 4, // Adjust the blur radius as needed
                    spreadRadius: 1, // Adjust the spread radius as needed
                  )
                ]
              : [],
        ),
        child: Image.asset(
          imageAsset,
          width: size + 4.0, // Increase size when selected
          height: size + 4.0,
        ),
      ),
    );
  }

  bool _isPressed = false;

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _isPressed = true;
    });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGround(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Choose  Movie",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
                child: Center(
                  child: Container(
                    height: 45.0,
                    decoration: BoxDecoration(
                      // border: Border.all(
                      //   color: Colors.black,
                      // ),
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search",
                              hintStyle: TextStyle(color: Colors.white60),
                              filled: true,
                              fillColor: Colors.transparent,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Icon(
                            Icons.mic,
                            color: Colors.white38,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Now Playing",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 150, // Change the height to 150
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: imageUrls2.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              imageUrls2[index],
                              fit: BoxFit.cover,
                              width: 120, // Adjust width as needed
                              height: 120,
                            ),
                          ),
                        );
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Coming soon",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: SizedBox(
                  height: 150, // Change the height to 150
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: imageUrls1.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              imageUrls1[index],
                              fit: BoxFit.cover,
                              width: 120, // Adjust width as needed
                              height: 120,
                            ),
                          ),
                        );
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Top movies",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: SizedBox(
                  height: 150, // Change the height to 150
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: imageUrls.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              fit: BoxFit.cover,
                              imageUrls[index],
                              width: 120, // Adjust width as needed
                              height: 120,
                            ),
                          ),
                        );
                      }),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: GestureDetector(
              //     onTapDown: _onTapDown,
              //     onTapUp: _onTapUp,
              //     child: AnimatedContainer(
              //       duration: Duration(milliseconds: 50),
              //       curve: Curves.easeInOut,
              //       width: _isPressed ? 110 : 120,
              //       height: _isPressed ? 40 : 50,
              //       decoration: BoxDecoration(
              //         color: Colors.red,
              //         gradient: LinearGradient(
              //           colors: [
              //             Color(0xfffc466b),
              //             Color(0xff7e3ffb),
              //             Color(0xffdc3ffb),
              //             Color(0xfffb3fbc),
              //             Color(0xfffb3f5e),
              //             Color(0xfffb7e3f)
              //           ],
              //           stops: [0.02, 0.12, 0.22, 0.32, 0.42, 0.53],
              //           begin: Alignment.topLeft,
              //           end: Alignment.bottomRight,
              //         ),
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //       child: Center(
              //         child: Text(
              //           'Tap Me',
              //           style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 24,
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: _getBatteryLevel,
                child: const Text('Know your battery Level'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal.shade600, // Background color
                  onPrimary: Colors.white, // Text color
                  elevation: 5, // Elevation (shadow)
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // Button border radius
                  ),
                ),
              ),
              Text(_batteryLevel),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFbc70c2), Color(0xFF6951b1), Color(0xffbc70c2)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildIcon(0, 'assets/images/Home.png', 'Home'),
              buildIcon(1, 'assets/images/Location.png', 'Location'),
              buildIcon(2, 'assets/images/Ticket.png', 'Ticket'),
              buildIcon(3, 'assets/images/Category.png', 'Category'),
              buildIcon(4, 'assets/images/Profile.png', 'Profile'),
            ],
          ),
        ),
      ),
    );
  }
}

class BackGround extends StatelessWidget {
  const BackGround({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Image.asset(
        "assets/images/back.png",
        fit: BoxFit.fill,
        height: 800,
      ),
      ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
              sigmaX: 30, sigmaY: 30), // Adjust the blur intensity
          child: Container(
            color: Colors.transparent, // Make the filter container transparent
          ),
        ),
      ),
      child, // Display the child widget on top of the glass effect
    ]);
  }
}
