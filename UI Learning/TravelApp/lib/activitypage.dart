import 'package:TravelAppUI/data/activity.dart';
import 'package:TravelAppUI/data/constant.dart';
import 'package:TravelAppUI/data/destination.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivityPage extends StatelessWidget {
  final Destination destination;
  ActivityPage({this.destination});

  String _buildStar(int rating){
    String stars = '';
    for(int i=0; i<rating; i++){
      stars += '⭐';
    }
    return stars;

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
       children: <Widget>[
        _buildImage(context),
        _bulidInfo()
        ],
        ),
    );
  }

  Expanded _bulidInfo() {
    return Expanded(
        child: ListView.builder(
          itemCount: destination.activity.length,
          itemBuilder: (context, index){
            Activity activity = destination.activity[index];
            return Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(40.0, 10.0, 20.0, 10.0),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 25,
                  child: Container(
                    height: 170,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image(
                        image: AssetImage(activity.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 170.0, right: 30, top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: 120,
                            child: Text(
                              activity.name,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                              maxLines: 2,
                              ),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                '\$${activity.price}',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                              Text(
                                'Per pax',
                                style: TextStyle(
                                  color: Colors.grey
                                ),
                                )
                            ],
                          ),
                        ],
                      ),
                      Text(
                        activity.type,
                        style: TextStyle(
                          color: Colors.grey
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Container(
                        height: 20,
                        width: 100,
                        child: Text(_buildStar(activity.rating)),
                      ),
                      SizedBox(height: 5.0),
                      Container(
                        width: double.infinity,
                        height: 40,
                        child: ListView.builder(
                          itemCount: activity.startTimes.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index){
                            return Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: selectediconbgColor,
                                  borderRadius: BorderRadius.circular(10.0)
                                ),
                                width: 80,
                                child: Center(
                                  child: Text(
                                    activity.startTimes[index],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            );
          },
        ),
      );
  }

  Container _buildImage(BuildContext context) {
    return Container(
         child: Stack(
           children: <Widget>[
             Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(
                   bottomLeft: Radius.circular(30.0),
                   bottomRight: Radius.circular(30.0)
                 ),
                 boxShadow: [
                   BoxShadow(
                     color: Colors.black26,
                     offset: Offset(0.0, 2.0),
                     blurRadius: 5.0
                   )
                 ]
               ),
               height: MediaQuery.of(context).size.width,
               child: Hero(
                 tag: destination.imageUrl,
                 child: ClipRRect(
                   borderRadius: BorderRadius.only(
                     bottomLeft: Radius.circular(30.0),
                     bottomRight: Radius.circular(30.0)
                   ),
                   child: Image(
                     image: AssetImage(destination.imageUrl),
                     fit: BoxFit.cover,
                   ),
                 ),
               ),
             ),
             Positioned(
              bottom: 20,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    destination.city,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.locationArrow,
                        color: Colors.grey[300],
                        size: 22,
                      ),
                      SizedBox(width: 10,),
                      Text(
                        destination.country,
                        style: TextStyle(
                          color: Colors.grey[300],
                          fontSize: 22
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 25,
              right: 20,
              child: Container(
                child: Icon(
                  Icons.location_on,
                  color: Colors.grey[300],
                  size: 24
                ),
              )
            ),
            Positioned(
              top: 50,
              left: 15,
              child: Container(
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(
                    FontAwesomeIcons.arrowLeft,
                    size: 22,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              right: 15,
              child: Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.search,
                    size: 22,
                  ),
                  SizedBox(width: 20,),
                  Icon(
                    FontAwesomeIcons.sort,
                    size: 22,
                  )
                ],
              ),
            )
           ],
         ),
       );
  }
}