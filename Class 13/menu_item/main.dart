import 'package:flutter/material.dart';
import 'package:popupmenu/selected_desc.dart';
import 'menu_item.dart';

void main(List<String>args)
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  MenuItem itm = selectedItem[0];

  void ChosenItem(MenuItem selItem)
  {
    setState(() {
      itm = selItem;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(
        actions: [
          PopupMenuButton(
            
            onSelected: ChosenItem,
            itemBuilder: (context){
            return selectedItem.map((MenuItem selItem){
              return PopupMenuItem(
                value: selItem,
                child: Row(children: [
                Icon(selItem.icn, color: selItem.icolor),
                Text(selItem.itemName)
              ],
              ),
              );
              
            }
            ).toList();
          })
        ],
      ),
      body: ShowDesc(selectedDesc: itm),
      ),

    );
  }
}