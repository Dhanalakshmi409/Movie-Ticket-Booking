import 'package:flutter/material.dart';
import 'package:movieticketapp/pages/firstpage.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('profile',),backgroundColor: Colors.transparent,),
      drawer: Drawer(
        child: ListView(
      children: [
        UserAccountsDrawerHeader(
          currentAccountPicture: Image.asset("assets/profiles.png"),
          accountName: Text("Dhanam"),
          accountEmail: Text("idhana@gmail.com"),
          ),
          ListTile(
            leading: Icon(Icons.person,
            color: Colors.black,),
            
            title: Text("profile"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen(),));
            },
          ),
         ListTile(
          leading: Icon(Icons.home,color: Colors.red,),
          title: Text("Home"),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => FirstPage(),));
          },
         ) ,
ListTile(
  leading: Icon(Icons.location_city,color: Colors.green,),
  title: Text("Address"),
),
ListTile(
  leading: Icon(Icons.star,color: Colors.yellow,),
  title: Text("Rate as"),
),
ListTile(
  leading: Icon(Icons.book_online,color: Colors.brown,),
  title: Text("Booknow"),
),
ListTile(
  leading: Icon(Icons.call,color: Colors.blue,),
  title: Text("contact as"),
),

      ],
    ),

),
      //   backgroundColor: Colors.transparent,
      //   leading: IconButton(onPressed: () {
      //     Navigator.push(context, MaterialPageRoute(builder: (context) => DrawerScreen(),));
      //   },
      // icon: Icon(Icons.menu)),
      // ),
      
      body:SafeArea(child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("MovieTicketBooking",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple
                )
                ),
                Text("villivakkam"),
                Text("MuthumariAmman kovil street"),
              ],
            ),),
            const Divider(),
            Padding(padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const Icon(Icons.call,color: Colors.blue,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                    border: Border.all(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/profiles.png'),
                    radius: 50.0,
                  ),
                ),
                const Icon(Icons.message,
                color: Colors.blue,
                ),
              ],
            ),
            ),
            const Divider(),
            Padding(padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:const <Widget>[
CustomListTile(
  title: '4Million',
  subtitle: 'Views',
),
CustomListTile(
  title: '50k',
  subtitle: 'Likes',
),
CustomListTile(
  title: '5k',
  subtitle: 'Comments',
),

    // Text("1M Views",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,
    // color: Color.fromARGB(255, 49, 14, 207)),),
    // Text("20k Likes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,
    // color: Color.fromARGB(255, 96, 33, 243)),),
    // Text("2k Comments",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,
    // color: Color.fromARGB(255, 69, 27, 187)),)
                             ],
            ),
            ),
            const Divider(),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.2,
              child: const Center(
                child: Text('Villivakam is the largest state assembly constituency in the Tamil Nadu in terms of number of voters.The Villivakam constituency covers an area from Annanagar in south to Madavaram in north and from Ayanavaram in east to Korattur in west.',
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                maxLines: 5,
                softWrap: true,
                ),
              ),
            ),
const Divider(),
Padding(padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
child: Column(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: <Widget> [
    Icon(Icons.call),
    Text("9043248199",
    style:TextStyle(
      fontWeight: FontWeight.bold,
    fontSize: 18) ,),
    SizedBox(height: 20,),
    Icon(Icons.mail),
    Text("idhana@gmail.com",
    style:TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15),
      )
  ],
),)
          ],
        ),
    
      ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget{
final String? title;
final String? subtitle;

const CustomListTile({this.title,this.subtitle});

@override 
Widget build(BuildContext context){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
  Text(title??'',
  style: const TextStyle(fontWeight: FontWeight.bold),
  ),
  Text(subtitle??'',)
],
  );
}
}