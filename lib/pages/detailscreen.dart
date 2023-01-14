import 'package:flutter/material.dart';
import 'package:movieticketapp/pages/booknow.dart';

var  serviceList =[
  {'title':'Morning Show', 'duration':160  ,'price':500},
   {'title':'afternoon Show', 'duration':165 ,'price':400},
    {'title':'Evening Show', 'duration':160 ,'price':450},
     {'title':'Night Show', 'duration':155 ,'price':600},
];

class DetailScreen extends StatelessWidget{
final SeatList;

   DetailScreen(this.SeatList);

//   @override
//   State<DetailScreen> createState() => _DetailScreenState();
// }


// class _DetailScreenState extends State<DetailScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SingleChildScrollView(
  child: Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    child: Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height/2+10,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.asset("assets/movie1.jpeg",
              fit: BoxFit.fill,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.purple.withOpacity(0.2),
              ),
            ],
          ),
        ),
        Positioned(
          top: 50,
          left: 20,
          child: IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
          ),
          ),
 Positioned(
  top: MediaQuery.of(context).size.height/3-30,
  child: Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(topLeft: Radius.circular(150),
      ),
    ),
    child: Padding(padding: EdgeInsets.symmetric(horizontal: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget> [
        SizedBox(
          height: 70,
        ),
        Text('Seat List',style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),),
        SizedBox(
          height: 20,
        ),
        ServiceTile(serviceList[0]),
        ServiceTile(serviceList[1]),
        ServiceTile(serviceList[2]),
        ServiceTile(serviceList[3]),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/6,
            color: Color.fromARGB(255, 34, 160, 192),
            child: Column(
              children: <Widget>[
                Row(
                  children:<Widget> [
                    Text('BoxOffice',
                    style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    ),),
                    Text('Jan 11,2023',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white,
                    ),),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.star,
                    color: Colors.red,
                    size: 16,),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(Icons.star,
                    color: Colors.red,
                    size: 16,),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(Icons.star,
                    color: Colors.red,
                    size: 16,),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(Icons.star,
                    color: Colors.red,
                    size: 16,),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(Icons.star,
                    color: Colors.red,
                    size: 16,),
                  ],
                ),
                SizedBox(height: 10,),
                Text('Box Office India,box office collection, movie reviews,news,trailers,movie business, top bollywood hits, bollywood movies,highest grossing movies.',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),),
              ],
            ),
          ),
        ),
      ],
    ),
    ),
  ),
  ),  
  Positioned(
    top: MediaQuery.of(context).size.height / 3 - 120,
    child:Padding(padding: EdgeInsets.symmetric(horizontal: 30),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children:<Widget> [
        Container(
          width: MediaQuery.of(context).size.width /3 - 20,
          height: MediaQuery.of(context).size.height /6 + 20,
          decoration: BoxDecoration(
            color: SeatList['bgColor'],
            borderRadius: BorderRadius.circular(25),
          ),
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                right: -1.0,
                child: Image.asset(SeatList['imgUrl'],
              scale: 1.7,
              ),
              ),
            ],
          ),
        ),
SizedBox(
  width: 20,
),
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children:<Widget> [
    Text(
      SeatList['MovieName'],
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
    SizedBox(
      height: 5,
    ),
    Text(
      SeatList["ActorsName"],
      style: TextStyle(
        fontWeight: FontWeight.w500,
        color: Color.fromARGB(255, 115, 102, 165),
      ),
    ),
    SizedBox(height: 10,),
    Row(
      children: <Widget>[
        Icon(Icons.star,
        size: 16,
        color: Colors.amber,),
        SizedBox(width: 5),
        Text(
          SeatList['rating'],
          style: TextStyle(
            color: Colors.red,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text('(${SeatList['rateAmount']})',
        style: TextStyle(color: Color.fromARGB(255, 36, 32, 32),
        ),
        ),
        ],
    )
  ],
),
      ],
    ),
    ),
    ),  
    Positioned(
      right: 10,
      top: MediaQuery.of(context).size.height/3-55,
      child:MaterialButton(onPressed: () {},
      padding: EdgeInsets.all(10),
      shape: CircleBorder(), 
      color: Colors.white,
      child: Icon(Icons.favorite_border,
      color: Colors.red,),),
    ),
      ],
    ),
  ),
),
    );
  }
}

class ServiceTile extends StatelessWidget {

final Service;
ServiceTile(this.Service);
  @override
  Widget build(BuildContext context) {
    return Container(
margin: EdgeInsets.only(bottom: 30),
child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width/2-40,
          child: Text(Service['title'],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),),
        ),
        SizedBox(
          height: 5,
        ),
        Text('${Service['duration']}Min',
        style: TextStyle(
          color: Color.fromARGB(255, 129, 86, 86),
        ),),
      ],
    ),
    Text('\$${Service['price']}',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
    ),),
    MaterialButton(onPressed: () {
Navigator.push(context, MaterialPageRoute(builder: (context) => BooknowScreen(),));
    },
    color: Colors.pink,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    child: Text('Book', style: TextStyle(color: Colors.white),
    ),
    ),
  ],
),
    );
  }
}