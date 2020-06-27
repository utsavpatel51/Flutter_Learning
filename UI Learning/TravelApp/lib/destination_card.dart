import 'package:TravelAppUI/activitypage.dart';
import 'package:TravelAppUI/data/destination.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DestinationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemCount: destination.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index){
          return GestureDetector(
            onTap: (){
              Navigator.push(context, PageRouteBuilder(
                pageBuilder: (context, a1, a2) => ActivityPage(destination: destination[index]),
                transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
						    transitionDuration: Duration(milliseconds: 800),
                ));
            },
            child: Container(
              margin: EdgeInsets.all(10.0),
              width: 210,
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Positioned(
                    bottom: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white
                        ,
                      ),
                      height: 100,
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "${destination[index].activity.length.toString()} activites",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              destination[index].description,
                              maxLines: 3,
                              style: TextStyle(
                                color: Colors.grey
                              ),
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Stack(
                      children: <Widget>[
                        Hero(
                          tag: destination[index].imageUrl,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image(
                              height: 180,
                              width: 180,
                              image: AssetImage(destination[index].imageUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          left: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                destination[index].city,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    FontAwesomeIcons.locationArrow,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    destination[index].country,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}