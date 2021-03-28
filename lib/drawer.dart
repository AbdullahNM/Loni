import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'global.dart' as global;

class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          ListTile(
            title: Image(
              image: AssetImage('assets/dumbbell.jpeg'),
              height: 40,
              width: 70,
            ),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.dumbbell),
            title: Text('Gym 1'),
            onTap: () {
              Navigator.of(context).pop();
              setState(() {
                global.selectedIndex = 0;
              });
              
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.dumbbell),
            title: Text('Gym 2'),
            onTap: () {
              Navigator.of(context).pop();
              setState(() {
                global.selectedIndex = 1;
                print(global.selectedIndex);
              });
            },
          ),
          ListTile(
            title: Image(
              image: AssetImage('assets/pizza.jpeg'),
              height: 40,
              width: 70,
            ),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.pizzaSlice),
            title: Text('Canteen 1'),
            onTap: () {
              Navigator.of(context).pop();
              setState(() {
                global.selectedIndex = 2;
              });
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.pizzaSlice),
            title: Text('Canteen 2'),
            onTap: () {
              Navigator.of(context).pop();
              setState(() {
                global.selectedIndex = 3;
              });
            },
          ),
          ListTile(
            title: Image(
              image: AssetImage('assets/book.jpeg'),
              height: 40,
              width: 70,
            ),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.book),
            title: Text('Stationary 1'),
            onTap: () {
              Navigator.of(context).pop();
              setState(() {
                global.selectedIndex = 4;
              });
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.book),
            title: Text('Stationary 2'),
            onTap: () {
              Navigator.of(context).pop();
              setState(() {
                global.selectedIndex = 5;
              });
            },
          ),
        ],
      ),
    );
  }
}
