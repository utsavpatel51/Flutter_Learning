import 'package:flutter/material.dart';

class StatefulPage extends StatefulWidget {
  @override
  _StatefulPageState createState() => _StatefulPageState();
}

class _StatefulPageState extends State<StatefulPage> {
  int counter = 0;
  String display = '';
  String name = '';
  List<String> data = ['Flutter', 'Is', 'Really', 'Awesome'];

  void onPressed(){
    setState(() {
      display = data[counter];
      counter = counter < data.length-1 ? counter + 1 : 0;
    });
  }
  String getName(){
    if(name!=''){
      return "Your Name is $name";
    }
    else{
      return '';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Ex'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                display,
                style: TextStyle(
                  fontSize: 22.0
                ),
                ),
              RaisedButton(
                color: Colors.red,
                child: Text(
                  'Press Me!',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white
                  ),
                  ),
                onPressed: onPressed,
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your name",
                    border: OutlineInputBorder(),
                    labelText: "Name"
                  ),
                  onSubmitted: (String str){
                    setState(() {
                      name = str;
                    });
                  },
              ),
              Text(
                getName(),
                style: TextStyle(
                  fontSize: 20.0
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}