import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:movieticketapp/pages/auth_controller.dart';
import 'package:movieticketapp/pages/firstpage.dart';
import 'package:movieticketapp/pages/input_validators.dart';
import 'package:movieticketapp/pages/mytheme.dart';
import 'package:movieticketapp/pages/socialbutton.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) :super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
   final nameController = TextEditingController();
   final emailController = TextEditingController();
   final passwordcontroller = TextEditingController();
   final cnfPasswordController = TextEditingController();

 @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: Mytheme.splash,
resizeToAvoidBottomInset: false,
      body: SafeArea ( 
        child: Container(
        height: size.height,
        width:  size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
 const SizedBox(
  height: 20,
 ),
 Container(
  margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
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
        "Create your account",
        style: TextStyle(
          fontSize: 15,
          color: Mytheme.splash,
          fontWeight: FontWeight.w600,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 15),
        child: TextFormField(
          style: const TextStyle(color: Colors.black),
          controller: nameController,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none,
            ),
            hintText: "Name",
            hintStyle: const TextStyle(color: Colors.black45,
            fontWeight: FontWeight.bold),
            fillColor:  Mytheme.greyColor,
            filled: true,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 15),
        child: TextFormField(
          style: const TextStyle(color: Colors.black),
          controller: emailController,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none,
            ),
            hintText: "Email Address",
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
          style: const TextStyle(color: Colors.black),
          controller: passwordcontroller,
          obscureText: true,
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
      Padding(
        padding: const EdgeInsets.only(top: 10,bottom: 5),
        child: TextFormField(
          style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
          controller: cnfPasswordController,
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none,
            ),
            hintText: "Confirm Password",
            hintStyle: const TextStyle(color: Colors.black45,
            fontWeight: FontWeight.bold),
            fillColor: Mytheme.greyColor,
            filled: true,
          ),
        ),
      ),
      ElevatedButton(onPressed: ()  {
         Get.to( FirstPage(),);
        if (InputValidator.validateField("Name",nameController.text.trim())&&
        InputValidator.validateField("Email", emailController.text.trim())
        ) {
          if (InputValidator.validatePassword(passwordcontroller.text,
           cnfPasswordController.text)) {
       AuthController.instance
       .registerUser(emailController.text.trim(), passwordcontroller.text.trim());
        }
        }
      }, 
      style: ElevatedButton.styleFrom(
        backgroundColor: Mytheme.splash,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: const Center(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Text("SIGNUP",
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
           const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 150),
              child: Text("Or",
              style: TextStyle(color: Color.fromARGB(255, 90, 89, 89),
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
  child:   SocialLoginButton(onFbClick: () {}, onGoogleClick:() {} ),
),
 ],
  ),
 ),
 RichText(text: TextSpan(
  children: [
   const TextSpan(text: "Already have an account ? ",
   style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold)),
    TextSpan(text: "Login",
    style:const TextStyle(decoration: TextDecoration.underline,
    fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),
    recognizer: TapGestureRecognizer()..onTap =() {
    Get.to(FirstPage());
    },
    ),
    const TextSpan(text: "  here.",
    style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),
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