import 'package:SolarSystem/Constant.dart';
import 'package:SolarSystem/HomePage.dart';
import 'package:SolarSystem/data.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final PlanetInfo planetInfo;
  DetailPage({this.planetInfo});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child:  Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(32.0),
              child: SingleChildScrollView(
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 300),
                    Text(
                      planetInfo.name,
                      style: TextStyle(
                        color: primaryTextColor,
                        fontSize: 44
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Solar System',
                      style: TextStyle(
                        color: primaryTextColor,
                        fontSize: 24
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Divider(color: Colors.black38,),
                    SizedBox(height: 20,),
                    Text(
                      planetInfo.desc,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 20,
                        color: primaryTextColor,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 20,),
                    Divider(color: Colors.black38,),
                    Text(
                      'Gallery',
                      style: TextStyle(
                        fontSize: 24,
                        color: primaryTextColor,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      height: 250,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: planetInfo.images.length,
                        itemBuilder: (context, index){
                          return Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)
                            ),
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Image.network(
                                planetInfo.images[index],
                                fit: BoxFit.cover,
                                )
                              ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: -100,
              child: Image.asset(planetInfo.icon),
            ),
            Positioned(
              top: 10,
              left: 20,
              child: Text(
                planetInfo.position.toString(),
                style: TextStyle(
                  color: primaryTextColor.withOpacity(0.1),
                  fontSize: 200
                ),
              ),
            ),
            Positioned(
              top: 8,
              left: 5,
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: (){
                  Navigator.pop(context);
                }
                )
            )
          ],
        ),
      ),
      
    );
  }
}