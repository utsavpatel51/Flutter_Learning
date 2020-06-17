import 'package:flutter/material.dart';

class StatelessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless Ex'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MyCard(
              title: Text(
                'Favorite',
                style: TextStyle(fontSize: 20.0),
              ),
              icon: Icon(
                Icons.favorite,
                color: Colors.redAccent,
                size: 40.0,
              )
            ),
            MyCard(
              title: Text(
                'Download',
                style: TextStyle(fontSize: 20.0),
              ),
              icon: Icon(
                Icons.file_download,
                color: Colors.blueAccent,
                size: 40.0,
              )
            ),
            MyCard(
              title: Text(
                'Fingerprint',
                style: TextStyle(fontSize: 20.0),  
              ),
              icon: Icon(
                Icons.fingerprint,
                color: Colors.grey[600],
                size: 40.0,  
              )
            ),
          ],
        ),
      ),
    );
  }
}
class MyCard extends StatelessWidget {
  MyCard({this.title, this.icon});
  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
      child: Card(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              this.title,
              this.icon
            ],
          ),
        ),
      ),
    );
  }
}