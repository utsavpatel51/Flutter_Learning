import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> with TickerProviderStateMixin {

  void rundiffpage() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacementNamed(context, "/home");
  }

  @override
    void initState() {
      super.initState();
      rundiffpage();
    }
   
    @override
    Widget build(BuildContext context) {
      return Container(
        child: SpinKitFoldingCube(
          color: Colors.white,
          size: 50.0,
          controller: AnimationController(vsync: this, duration: const Duration(milliseconds: 1200)),
        ),
      );
    }

}
