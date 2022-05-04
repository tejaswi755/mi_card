import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int change = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/image$change.png'),
              ),
              Text(
                'TEJASWI SHARMA',
                style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Pacifico'),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                    fontFamily: 'fonts/SourceSansPro.ttf',
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
                width: 200,
                child: Divider(color: Colors.white),
              ),
              Card(
                margin: EdgeInsets.only(left: 20, right: 20),
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.call, color: Colors.teal),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          '+91-9521056312',
                          style: TextStyle(fontSize: 20),
                        )
                      ]),
                ),
                // child: ListTile(
                //   leading:  Icon(Icons.call, color: Colors.teal),
                //   title: Text(
                //     '+9521056312',
                //     style: TextStyle(fontSize: 17.0),
                //   ),
                // ),
              ),
              Card(
                margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'tejaswisharma755@gmail.com',
                  ),
                ),
              ),
              SizedBox(height: 30),
              MaterialButton(
                onPressed: () {
                  setState(() {
                   // change = change == 1 ? 2 : 1;
                    if (change == 1) {
                      change = 2;
                    } else {
                      change = 1;
                    }
                  });
                },
                child: Text('Click Me', style: TextStyle(fontSize: 25)),
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
