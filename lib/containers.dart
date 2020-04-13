import 'package:flutter/material.dart';

class MyContainers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _Columns2();
  }

  Widget _Basic1() {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: Container(
          color: Colors.white,
          child: Text('Kashif Anwaar'),
        ),
      ),
    );
  }

  Widget _Basic2() {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: SafeArea(
          child: Container(
            width: 150,
            height: 50,
            margin: EdgeInsets.only(left: 10, top: 20),
            padding: EdgeInsets.all(16),
            color: Colors.white,
            child: Text('Kashif Anwaar'),
          ),
        ),
      ),
    );
  }

  Widget _Columns() {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: SafeArea(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.up,
          children: <Widget>[
            Container(
              color: Colors.red,
              width: 100,
              height: 100,
              child: Text('Col 1'),
            ),
            Container(
              color: Colors.blue,
              width: 100,
              height: 100,
              child: Text('Col 2'),
            ),
          ],
        )),
      ),
    );
  }

  Widget _Columns2() {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: SafeArea(
            child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            InkWell(
              onTap: () {
                print('Tap Recorded');
              },
              child: Container(
                width: 150,
                height: 50,
                margin: EdgeInsets.only(left: 10, top: 20),
                padding: EdgeInsets.all(16),
                color: Colors.white,
                child: Text('Kashif Anwaar'),
              ),
            ),
            Container(
              color: Colors.red,
              width: double.infinity,
              height: 100,
              margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Text('Col 1'),
            ),
            Container(
              color: Colors.blue,
              width: double.infinity,
              height: 100,
              margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Text('Col 2'),
            ),
            Container(
              color: Colors.green,
              width: double.infinity,
              height: 100,
              margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Text('Col 3'),
            ),
            Container(
              width: double.infinity,
            )
          ],
        )),
      ),
    );
  }
} //END