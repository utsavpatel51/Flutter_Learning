import 'package:TravelAppUI/data/constant.dart';
import 'package:TravelAppUI/destination_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIcon = 0;

  final List<IconData> icons =[
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.biking,
    FontAwesomeIcons.swimmer
  ];

  Widget _bulidIcon(int index){
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: index == _selectedIcon ? selectediconbgColor : iconbgColor,
        ),
        height: 60,
        width: 60,
        child: Icon(
          icons[index],
          color: index == _selectedIcon ? selectediconColor : iconColor,
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 100, top: 50),
              child: Text(
                'What you would like to find?',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                  ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: icons.map((e){
                    var index = icons.indexOf(e);
                    return GestureDetector(
                      onTap: (){
                        this.setState(() {
                          _selectedIcon = index;
                        });
                      },
                      child: _bulidIcon(index),
                    );
                }).toList()
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Top Destinations',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: textColor
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            DestinationCard()                
          ],
        ),
      ),
    );
  }
}