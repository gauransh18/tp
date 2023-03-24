import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';


class Home extends StatefulWidget {
   final Widget mobileBody;
  final Widget desktopBody;
  const Home({required this.mobileBody, required this.desktopBody});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return widget.mobileBody;
        } else {
          return widget.desktopBody;
        }
      },
    );
  }
}