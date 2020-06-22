import 'package:flutter/material.dart';
import 'package:learning07/pages/tabs/FirstPage.dart';
import 'package:learning07/pages/tabs/SecondPage.dart';
import 'package:learning07/pages/tabs/ThirdPage.dart';

class MyTabs extends StatefulWidget {
  @override
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  void initState(){
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabs'),
        bottom: TabBar(
          controller: controller,
          tabs: <Tab>[
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.search)),
            Tab(icon: Icon(Icons.favorite)),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          First(),
          Second(),
          Third()
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.blueAccent,
        child: TabBar(
          controller: controller,
          tabs: <Tab>[
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.search)),
            Tab(icon: Icon(Icons.favorite)),
          ],
        ),
      ),
    );
  }
}