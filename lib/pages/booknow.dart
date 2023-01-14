import 'package:flutter/material.dart';

class BooknowScreen extends StatefulWidget {
  const BooknowScreen({super.key});

  @override
  State<BooknowScreen> createState() => _BooknowScreenState();
}

class _BooknowScreenState extends State<BooknowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text("Book Now"),
        backgroundColor: Color.fromARGB(255, 98, 36, 214),
       ),
       body: 
       
       GridView.builder(
        itemCount: 500,
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 6) ,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
child: Container(
  color: Color.fromARGB(255, 223, 99, 115),
),
            );
 }),
       
        );

  }
}