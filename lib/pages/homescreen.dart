import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movieticketapp/pages/loginscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ElevatedButton(onPressed: () {
    Get.to(LogInScreen());
      },
       child: const Center(
        child: Text("OnClick"),
    ),
    ),
    ),
    );
  }
}