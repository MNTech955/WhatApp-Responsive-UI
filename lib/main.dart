import 'package:flutter/material.dart';
import 'package:whatapp_clone_flutter/widget/color.dart';
import 'package:whatapp_clone_flutter/responsive/responsive_layout.dart';
import 'package:whatapp_clone_flutter/screen/mobile_screen_layout.dart';
import 'package:whatapp_clone_flutter/screen/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatapp UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,

      ),
    
      home: ResponsiveLayout(mobileScreenLayout: MobileScreenLayout(), webScreenlayout: WebScreenlayout())
    );
  }
}

