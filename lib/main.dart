import 'package:animations/screens/shazam_animation.dart';
import 'package:animations/screens/three_loaders.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return  MaterialApp(
      title: 'SoftPrism',
      debugShowCheckedModeBanner: false,
      initialRoute: Shazam.id,
      routes: {
        Shazam.id:(context) => const Shazam(),
        ThreeLoaders.id:(context) => const ThreeLoaders(),
      },
      theme: ThemeData(fontFamily: 'DMSans'),
    );
  }
}