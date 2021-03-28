import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'global.dart' as global;

class Home extends StatelessWidget {
  final selectedIndex;
  Home(this.selectedIndex);
  final List<Widget> pages = [
    Page1(),
    Page2(),
    Page3(),
    Page4(),
    Page5(),
    Page6(),
    Page7(),
  ];

  @override
  Widget build(BuildContext context) {
    return pages[selectedIndex];
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(FontAwesomeIcons.pizzaSlice),
              SizedBox(
                width: 20,
              ),
              Text(
                'Canteen 1',
                style: TextStyle(
                  fontSize: 26,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 70,
          width: 250,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.pinkAccent),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 90,
              ),
              Text(
                '-500',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, color: Colors.red),
              ),
              Icon(FontAwesomeIcons.rupeeSign),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 20, 0, 20),
          height: 70,
          width: double.infinity,
          color: Color(0XFFDAD9FD),
          child: Text(
            'March 7',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 22,
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Text(
              '21:00',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Text(
                  'Pizza',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 2,
                  width: 1300,
                  child: Divider(
                    color: Colors.black38,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 90,
                ),
                Text(
                  '-100',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22, color: Colors.red),
                ),
                Icon(FontAwesomeIcons.rupeeSign),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            Text(
              '21:00',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Text(
                  'Coffee',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 2,
                  width: 1300,
                  child: Divider(
                    color: Colors.black38,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 90,
                ),
                Text(
                  '-100',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22, color: Colors.red),
                ),
                Icon(FontAwesomeIcons.rupeeSign),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            Text(
              '21:00',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Text(
                  'Sandwich',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 2,
                  width: 1300,
                  child: Divider(
                    color: Colors.black38,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 90,
                ),
                Text(
                  '-100',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22, color: Colors.red),
                ),
                Icon(FontAwesomeIcons.rupeeSign),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 20, 0, 20),
          height: 70,
          width: double.infinity,
          color: Color(0XFFDAD9FD),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 90,
                  ),
                  Text(
                    '-300',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, color: Colors.red),
                  ),
                  Icon(FontAwesomeIcons.rupeeSign),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                print('Pay');
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFFA31FEE),
                ),
                child: Text(
                  'Pay',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                print('Requests');
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFFA31FEE),
                ),
                child: Text(
                  'Requests',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Page2');
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Page 3');
  }
}

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Page 4');
  }
}

class Page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Page 5');
  }
}

class Page6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Page 6');
  }
}

class Page7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Page 7');
  }
}
