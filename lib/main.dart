import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 56,
              backgroundColor: Colors.white54,
              backgroundImage: AssetImage('assets/images/Elvis.jpg'),
            ),
            Text(
              'Elvis Suárez Ramos',
              style: TextStyle(
                fontFamily: 'Lobster',
                fontSize: 26.0,
                fontWeight: FontWeight.w700,
                color: Colors.white,
                letterSpacing: 3.0,
              ),
            ),
            SizedBox(height: 4.0),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.white60,
                letterSpacing: 3.0,
              ),
            ),
            SizedBox(
              width: 170.0,
              child: Divider(
                color: Colors.white60,
                height: 20.0,
                thickness: 1.0,
                indent: 20.0,
                endIndent: 20.0,
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              elevation: 5.0,
              child: ListTile(
                leading: Icon(Icons.phone, color: Colors.indigo),
                trailing: Icon(
                  Icons.check_circle_outline_outlined,
                  color: Colors.indigo,
                ),
                title: Text(
                  '+51 966 333 347',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Teléfono',
                  style: TextStyle(fontSize: 14.0, color: Colors.black54),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              elevation: 5.0,
              child: ListTile(
                leading: Icon(Icons.mail, color: Colors.indigo),
                trailing: Icon(
                  Icons.check_circle_outline_outlined,
                  color: Colors.indigo,
                ),
                title: Text(
                  'elvis240877@gmail.com',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Correo electrónico',
                  style: TextStyle(fontSize: 14.0, color: Colors.black54),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/facebook.png', height: 60),
                SizedBox(width: 30.0),
                Image.asset('assets/images/instagram.png', height: 60),
                SizedBox(width: 30.0),
                Image.asset('assets/images/twitter.png', height: 60),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
