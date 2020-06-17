import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sl');
                },
                child: Text(
                  'Stateless widget',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              const SizedBox(height: 20.0,),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sf');
                },
                child: Text(
                  'Stateful widget',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              const SizedBox(height: 20.0,),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/tabs');
                },
                child: Text(
                  'Tabs',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}