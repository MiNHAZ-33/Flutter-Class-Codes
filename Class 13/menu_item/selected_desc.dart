import 'package:flutter/material.dart';
import './menu_item.dart';

class ShowDesc extends StatelessWidget {

  final MenuItem selectedDesc;

  const ShowDesc({ Key? key, required this.selectedDesc }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(

        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
           
          border: Border.all(color: Colors.redAccent, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(selectedDesc.description, style: TextStyle(color: Colors.black, fontSize: 30),),

      ),
    );
  }
}