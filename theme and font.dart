import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
 
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme',
      home: MyTheme(),
      theme: ThemeData(
        primaryColor: Colors.red, 
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
          primary: Colors.lightBlue,
          onPrimary: Colors.white,
          elevation: 20,
          shadowColor: Colors.lightBlueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
 
          ),
          ),
        ),
        accentColor: Colors.deepPurpleAccent,
        splashColor: Colors.black,
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.brown,
            shadows: [Shadow(
              color: Colors.deepOrange,
              offset: Offset(10,10),
            ),]
          )
        ),
        cardTheme: CardTheme(
          color: Colors.pinkAccent,
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )
        ) 
      ),
    );
  }
}
 
class MyTheme extends StatelessWidget {
  const MyTheme({ Key? key }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Example'),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Example of google font family', style: GoogleFonts.antic(
              color: Colors.pinkAccent,
              fontSize: 24,
            ),),
            ElevatedButton(onPressed: (){}, child: Text('Elevated Button'),),
            Text('You should be walking', style: Theme.of(context).textTheme.headline1),
            Card(child: Text('I am a card', style: Theme.of(context).textTheme.headline3,),),
            Card(child: Text('I am a card', style: Theme.of(context).textTheme.headline1,),),
            Card(child: Text('I am a card', style: Theme.of(context).textTheme.headline5,),),
            Card(child: Text('I am a card', style: Theme.of(context).textTheme.headline2,),),
          ],
 
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon(Icons.add),),
 
    );
  }
}
