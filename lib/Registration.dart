import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:loni_ledger/help.dart';
import 'package:loni_ledger/login.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  List<Widget> pages = [Login(), Registration(), Help()];
  List<String> _buttons = ['Login', 'Register', 'Help'];
  int _selectedIndex = 0;
  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
        Navigator.of(context).pop();
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => pages[_selectedIndex],
          ),
        );
        //sprint(_selectedIndex);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: _selectedIndex == index ? Color(0xFFA31FEE) : Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black38),
        ),
        child: Text(
          _buttons[index],
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.grey,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'LONI',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  letterSpacing: 1.3),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: _buttons
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map) => _buildIcon(map.key),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Image(
                        image: AssetImage('assets/phoneicon.jpeg'),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hassle Free',
                            style: TextStyle(
                              fontSize: 26,
                              letterSpacing: 1.4,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: 300,
                            child: Text(
                              'Say No to physical payment records, It\'s 21st century.',
                              style: TextStyle(
                                fontSize: 22,
                                letterSpacing: 1.2,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image(
                        image: AssetImage('assets/stopwatch.jpeg'),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Saves Time',
                            style: TextStyle(
                              fontSize: 26,
                              letterSpacing: 1.4,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: 300,
                            child: Text(
                              'Records can be retrieved in a snap.',
                              style: TextStyle(
                                fontSize: 22,
                                letterSpacing: 1.2,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image(
                        image: AssetImage('assets/records.jpeg'),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Accurate',
                            style: TextStyle(
                              fontSize: 26,
                              letterSpacing: 1.4,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: 300,
                            child: Text(
                              'Physical records can contain errors.',
                              style: TextStyle(
                                fontSize: 22,
                                letterSpacing: 1.2,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 20, 20, 50),
                      padding: EdgeInsets.fromLTRB(35, 10, 30, 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(
                          color: Color(0xff707070),
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Registration',
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            width: 400,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xff707070),
                              ),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Username'),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            width: 400,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xff707070),
                              ),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Institute Email'),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            width: 400,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xff707070),
                              ),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Password'),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            width: 400,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xff707070),
                              ),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Confirm Password'),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          GestureDetector(
                            onTap: () {
                              print('registered');
                              Navigator.of(context).pop();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Login(),
                                ),
                              );
                            },
                            child: Container(
                              //width: MediaQuery.of(context).size.width / 2,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black26),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                'Register',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text('Already a user ?'),
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () {
                                      print('Sign In');
                                      Navigator.of(context).pop();
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Login(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Sign in',
                                      style: TextStyle(
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
