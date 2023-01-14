import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:movieticketapp/pages/auth_controller.dart';
import 'package:movieticketapp/pages/mytheme.dart';
import 'package:movieticketapp/pages/signupscreen.dart';
import 'package:movieticketapp/pages/socialbutton.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) :super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final forgotEmailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
     final Size size= MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: Mytheme.splash,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
       child: Container(
        color: Colors.transparent,
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
          // Image.asset("assets/movie3.jpeg"),
         const Padding(padding: EdgeInsets.only(top: 30),
          child:
          Text("Welcome Buddies",style:
           TextStyle(fontSize: 22,color: Colors.white,
           ),
           ),
           ),

              Text("Login to book your seat, I said its your seat",
            style:
             TextStyle(fontSize: 15,color:Colors.white.withOpacity(0.7),
             ),
 ),
 const SizedBox(
  height: 20,
 ),
 Container(
  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
  padding: const EdgeInsets.all(19),
  decoration: BoxDecoration(color: Colors.white,
  borderRadius: BorderRadius.circular(10),
  ),
  width: size.width,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        "Login to your account",
        style: TextStyle(
          fontSize: 15,
          color: Mytheme.splash,
          fontWeight: FontWeight.w600,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 15),
        child: TextFormField(
          controller: emailController,
          style: const TextStyle(color: Colors.black),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none,
            ),
            hintText: "Username",
            hintStyle: const TextStyle(color: Colors.black45,
            fontWeight: FontWeight.bold),
            fillColor: Mytheme.greyColor,
            filled: true,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 15),
        child: TextFormField(
          controller: passwordController,
          obscureText: true,
          style: const TextStyle(color: Colors.black),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none,
            ),
            hintText: "Password",
            hintStyle: const TextStyle(color: Colors.black45,
            fontWeight: FontWeight.bold),
            fillColor: Mytheme.greyColor,
            filled: true,
          ),
        ),
      ),
      Align(
alignment: Alignment.centerRight,
child: TextButton(onPressed: () {
  Get.defaultDialog(
    title: "Forgot Password?",
    content: TextFormField(
      style: const TextStyle(color: Colors.black),
      controller: forgotEmailController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none,
        ),
        hintText: "Email address",
        hintStyle: const TextStyle(color: Colors.black45),
        fillColor: Mytheme.greyColor,
        filled: true,
      ),
    ),
    radius: 10,
    onWillPop: () {
      forgotEmailController.text = "";
      
      return Future.value(true);
    },
    contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
    confirm: ElevatedButton(onPressed: () {
      AuthController.instance.forgotPassword(forgotEmailController.text.trim());
      forgotEmailController.text = "";
      Get.back();
    }, 
    style: ElevatedButton.styleFrom(
      backgroundColor: Mytheme.splash,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    ),
    child: const Center(
      child: Padding(padding: EdgeInsets.all(12),
      child: Text("Send Reset Mail",
      style: TextStyle(fontSize: 16),
      ),
      ),
    ),
    ),
    );
},
 child: const Text("Forgot Password?",
        style: TextStyle(
          color: Colors.black54,fontWeight: FontWeight.w800),
        ),
        ),
      ),
      ElevatedButton(onPressed: () {
  AuthController.instance.login(emailController.text.trim(), passwordController.text.trim());
      }, 
      style: ElevatedButton.styleFrom(
        backgroundColor: Mytheme.splash,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child:const Center(
        child: Padding(padding: EdgeInsets.all(15),
          child: Text("LOGIN",
          style: TextStyle(fontSize: 16),
          ),
        ),
      ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Row(
          children: [
            Expanded(
              child: Divider(
                thickness: 0.5,
                color: Colors.black.withOpacity(0.3),
              ),
            ),
           const Padding(padding: EdgeInsets.symmetric(horizontal: 150),
              child: Text("Or",
              style: TextStyle(color:Color.fromARGB(255, 90, 89, 89),
              fontWeight: FontWeight.bold,
              ),
              ),
            ),
            Expanded(child: 
            Divider(
              thickness: 0.5,
              color: Colors.black.withOpacity(0.3),
            ),
            ),
          ],
        ),
      ),
Padding(
  padding: const EdgeInsets.only(top: 15,bottom: 15),
  child:   SocialLoginButton(onFbClick: () {}, onGoogleClick:() {
    AuthController.instance.googleLogin();
  },
  ),
),
 ],
  ),
 ),
 RichText(text: TextSpan(
  children: [
   const TextSpan(text: "Don't have an account ? ",
   style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold)),
    TextSpan(text: "Sign Up",
    style:const TextStyle(decoration: TextDecoration.underline,
    fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),
    recognizer: TapGestureRecognizer()..onTap =() {
      Get.to(const SignUpScreen());
    },
    ),
    const TextSpan(text: "  here.",
    style: TextStyle(fontSize: 15,color: Colors.black,
    fontWeight: FontWeight.bold),
    ),
  ],
 ),
 ),
        ],
          ),
      ),
      ),
    );
  }
}