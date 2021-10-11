import 'package:flutter/material.dart';

class MenuItem {
  String itemName;
  String description;
  IconData icn;
  Color icolor;

  MenuItem(
    {
      required this.itemName,
      required this.description,
      required this.icn,
      required this.icolor
    }
  );
}

List<MenuItem> selectedItem = [
  MenuItem(itemName: 'Privacy Policy',
  description: 'Why? You won\'t read it anyway',
  icn: Icons.privacy_tip,
  icolor: Colors.green ),
  
  MenuItem(itemName: 'About app',
  description: 'You still here!',
  icn: Icons.details,
  icolor: Colors.greenAccent),

  MenuItem(itemName: 'Settings',
  description: 'Don\'t change anything here, l o l', 
  icn: Icons.settings_applications,
  icolor: Colors.redAccent),
];