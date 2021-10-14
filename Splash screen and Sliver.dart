import 'package:flutter/material.dart';
import 'dart:async';
 
void main()=>runApp(MyTestApp());
 
class MyTestApp extends StatelessWidget {
  const MyTestApp({ Key? key }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My app',
      home: MyApp(),
 
    );
  }
}
 
class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);
 
  @override
  SplashScreenState createState() => SplashScreenState();
}
 
 
class SplashScreenState extends State<MyApp> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5),()=>Navigator.pushReplacement(context,
    MaterialPageRoute(
      builder: (context) => MySliver(),
    ),),);
  }
  Widget build(BuildContext context) {
    return Container(
      child: FlutterLogo(),
 
    );
  }
}
 
class MySliver extends StatelessWidget {
  const MySliver({ Key? key }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(actions: [
            Icon(Icons.alarm),
          ],
          backgroundColor: Colors.blueAccent,
          expandedHeight: 200,
          collapsedHeight: 150,
          pinned: true),
          SliverFixedExtentList(delegate: SliverChildListDelegate(
            [Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepPurpleAccent,
              ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Ice Cream'),
            Icon(Icons.icecream),
            ],
            ),),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepPurpleAccent,
              ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Burger'),
            Icon(Icons.free_breakfast),],)
            ),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepPurpleAccent,
              ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Pizza'),
            Icon(Icons.local_pizza),],)
            ),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepPurpleAccent,
              ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Cold Drinks'),
            Icon(Icons.local_drink),],)
            ),
            ]
          ), itemExtent: 80)
        ],
      ),
    );
  }
}
