import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movieticketapp/pages/mytheme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
late AnimationController _animationController;
late Animation<double> _animation;

@override
void initState() {
  _animationController = AnimationController(vsync: this, 
  duration:const Duration(milliseconds: 1000));
  _animation = CurvedAnimation(parent: _animationController, 
  curve: Curves.bounceOut,reverseCurve: Curves.bounceIn);
  _animationController.forward();
  super.initState();
}

@override 
void dispose() {
  _animationController.dispose();
  super.dispose();
}
@override 
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      backgroundColor: Mytheme.splash,
      body:
      Container(
        child:
        Center(
          child: ScaleTransition(
            scale: _animation,
          child: Image.asset("assets/movie3.jpeg",height:600,),
          ),
          ),
        ),
    );
  }
}
