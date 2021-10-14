import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView',
      home: MyGridBody(),
    );
  }
}

class MyGridBody extends StatefulWidget {
  const MyGridBody({Key? key}) : super(key: key);

  @override
  _MyGridBodyState createState() => _MyGridBodyState();
}

class _MyGridBodyState extends State<MyGridBody> {
  List gridItem = ['One', 'Two', 'Three', 'Four', 'Five', 'Six'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: gridItem.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, int index) {
            return GestureDetector(
              child: Card(
                child: Text(gridItem[index]),
                elevation: 15,
              ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      content: Text('Grid view of ' + gridItem[index]),
                    );
                  },
                );
              },
            );
          }),
    );
  }
}
