// https://medium.com/flutter-community/simple-ways-to-pass-to-and-share-data-with-widgets-pages-f8988534bd5b
import 'package:flutter/material.dart';
import 'package:learning07/pages/home.dart';
import 'package:learning07/pages/loading.dart';
import 'package:learning07/pages/stateful_page.dart';
import 'package:learning07/pages/stateless_page.dart';
import 'package:learning07/pages/tabs.dart';

void main() => runApp(MaterialApp(
  routes: {
    "/" : (context) => Loading(),
    "/home": (context) => Home(),
    "/sl": (context) => StatelessPage(),
    "/sf": (context) => StatefulPage(),
    "/tabs": (context) => MyTabs()
  },
));

