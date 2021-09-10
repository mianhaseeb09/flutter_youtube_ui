import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_youtube_ui/screens/nav_screens.dart';

void main() {
  runApp(ProviderScope(child:MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Youtube Ui',
      theme: ThemeData(
        brightness: Brightness.dark,
            bottomNavigationBarTheme:
          const BottomNavigationBarThemeData(selectedItemColor: Colors.white)
      ),
      home: NavigationScreen()
    );
  }
}


