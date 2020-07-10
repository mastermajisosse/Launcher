import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:launcher/screens/left_screen_access.dart';
import 'utils/mystyle.dart';
import 'utils/route_genetator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);

    // SystemChrome.setPreferredOrientations(
    //     [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      // statusBarColor: Colors.black,
      systemNavigationBarColor: Colors.transparent,
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      // home: LeftScreenAccess(),
      theme:
          ThemeData(fontFamily: 'Tajawal', primaryColor: Mystyle.primarycolo),
      initialRoute: '/',
      onGenerateRoute: RoutGenerator.generateRout,
      debugShowCheckedModeBanner: false,
    );
  }
}
