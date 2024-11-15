import 'package:flutter/material.dart';


class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenlayout;
  const ResponsiveLayout({super.key, required this.mobileScreenLayout, required this.webScreenlayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, Constraints){
        if(Constraints.maxWidth>900){
          return webScreenlayout;
        }
        return mobileScreenLayout;
      }
      );
  }
}