import 'dart:async';
import 'package:flutter/material.dart';
import 'Navigate/home.dart';
import 'dart:math' as math;
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
  late final AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 2))..repeat();
    Timer(
        Duration(seconds: 6),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
    child: AnimatedBuilder(
    animation: _controller,
    builder: (_, child) {
    return Transform.rotate(
    angle: _controller.value * 2 * math.pi,
    child: child,
    );
    },
    child: Image.asset('assets/images/110.png',fit: BoxFit.contain,),
      ),
      ),
    );
  }
}