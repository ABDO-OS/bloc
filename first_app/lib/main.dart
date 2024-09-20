import 'package:flutter/material.dart';

void main() {
  runApp(businessApp());
}

class businessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 1, 6, 21),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 105,
                backgroundColor: Color.fromARGB(255, 42, 42, 42),
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('images/0101.jpg'),
                ),
              ),
            ),
            Text(
              'Abdalrhman Osama',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontFamily: 'Agnaden',
              ),
            ),
            Text(
              'flutter developer',
              style: TextStyle(
                color: Color.fromARGB(255, 116, 116, 116),
              ),
            ),

            Divider(
              color: Colors.white,
              thickness: 1,
              indent: 60,
              endIndent: 60,
              height: 10,
            ),

            //  Padding(
            //  padding: EdgeInsets.symmetric(horizontal: 16 , vertical: 8),
            /* child:*/ Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              height: 70,
              child: Row(
                //    mainAxisSize: MainAxisSize.min,
                children: [
                  Spacer(flex: 1),
                  Icon(
                    Icons.phone,
                    size: 30,
                    color: Color.fromARGB(255, 9, 39, 63),
                  ),
                  Spacer(flex: 1),
                  Text('01122659904', style: TextStyle(fontSize: 20)),
                  Spacer(flex: 12),
                ],
              ),
            ),

            // Padding(
            // padding: EdgeInsets.symmetric(horizontal: 16 , vertical: 6 ),  this for child
            /*child:*/ Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              //  margin: EdgeInsets.symmetric(horizontal: 16 , vertical: 6), this for parent better than padding

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              height: 70,

              child: Row(
                children: [
                  Spacer(flex: 2),
                  Icon(
                    Icons.mail,
                    size: 30,
                    color: Color.fromARGB(255, 9, 39, 63),
                  ),
                  Spacer(flex: 2),
                  Text('abdalrhmanosama135@gmail.com',
                      style: TextStyle(fontSize: 17)),
                  Spacer(flex: 3),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
