import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:loni_ledger/Ledger.dart';
import 'package:loni_ledger/Registration.dart';

import 'package:loni_ledger/help.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  List<String> _buttons = ['Login', 'Register', 'Help'];
  List<Widget> pages = [Login(), Registration(), Help()];
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
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: Column(
                  children: [
                    Image(
                      width: 800,
                      image: AssetImage('Assets/Univ.jpeg'),
                    ),
                    Container(
                      width: 400,
                      child: Text(
                        'Expense Tracking for places of interaction on or near campus',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Column(
                  children: [
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
                    SizedBox(
                      height: 20,
                    ),
                    Stack(children: [
                      Positioned(
                        top: 5,
                        right: 4,
                        child: Image(
                          image: AssetImage('calc.jpeg'),
                          height: 200,
                          width: 130,
                        ),
                      ),
                      Positioned(
                        right: 30,
                        bottom: 10,
                        child: Image(
                          image: AssetImage('pizza.jpeg'),
                          height: 230,
                          width: 180,
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 40,
                        child: Image(
                          image: AssetImage('book.jpeg'),
                          height: 200,
                          width: 130,
                        ),
                      ),
                      Positioned(
                        top: -30,
                        left: 30,
                        child: Image(
                          image: AssetImage('phone.jpeg'),
                          height: 200,
                          width: 130,
                        ),
                      ),
                      Container(
                        width: 600,
                        margin: EdgeInsets.fromLTRB(30, 20, 20, 50),
                        padding: EdgeInsets.fromLTRB(35, 10, 30, 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          /*border: Border.all(
                            color: Color(0xff707070),
                          ),*/
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 135,
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
                            SizedBox(
                              height: 40,
                            ),
                            GestureDetector(
                              onTap: () {
                                print('Logged In');
                                Navigator.of(context).pop();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Ledger(),
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
                                  'Login',
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Not a user? '),
                                  MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: () {
                                        print('Register');
                                        Navigator.of(context).pop();
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                Registration(),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        'Register',
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
                    ]),
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
