import 'package:SolarSystem/Constant.dart';
import 'package:SolarSystem/DetailPage.dart';
import 'package:SolarSystem/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradeintEnd,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [gradeintStart, gradeintEnd],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter
          )
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          'Explore',
                          style: TextStyle(
                            color: Color(0xFFffffff),
                            fontSize: 44.0
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          'Solar System',
                          style: TextStyle(
                            color: Color(0xFFffffff),
                            fontSize: 24.0
                          ),
                          textAlign: TextAlign.left
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 500,
                child: Swiper(
                  autoplay: true,
                  itemCount: planets.length,
                  itemWidth: MediaQuery.of(context).size.width - 2*64,
                  layout: SwiperLayout.STACK,
                  pagination: SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                      activeSize: 20,
                      space: 10
                    ),
                  ),
                  itemBuilder: (context, index){
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, PageRouteBuilder(pageBuilder: (context, a, b ) => 
                        DetailPage(planetInfo: planets[index],)
                        ));
                      },
                       child: Stack(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              SizedBox(height: 100,),
                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 100,),
                                      Text(
                                        planets[index].name,
                                        style: TextStyle(
                                          fontSize: 44,
                                          color: primaryTextColor,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      Text(
                                        'Solar System',
                                        style: TextStyle(
                                          color: primaryTextColor,
                                          fontSize: 24
                                        ),
                                        textAlign: TextAlign.left
                                      ),
                                      SizedBox(height: 5,),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            'Know More',
                                            style: TextStyle(
                                              fontSize: 22,
                                              color: secondaryTextColor
                                            ),
                                          ),
                                          SizedBox(width: 5,),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            color: secondaryTextColor,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ),
                            ],
                          ),
                          Image.asset(planets[index].icon),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}