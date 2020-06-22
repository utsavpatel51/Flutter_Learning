import 'package:flutter/material.dart';


void main() => runApp(App());

class App extends StatefulWidget{
	createState(){
		return AppStateKeeper();
	}
}

class AppStateKeeper extends State<App>{
	int _count  = 0;
	final barColor = const Color(0xFF2ecc72);
	final bgColor = const Color(0xFFEAF0F1);

	Widget build(context){
		return MaterialApp(
		home: Scaffold(
			backgroundColor: bgColor,
			appBar: AppBar(
				backgroundColor: barColor,
				title: Text('Project01'),
				centerTitle: true,
			),
			body: Center(
				child: Text(
					'$_count',
					style: TextStyle(fontSize: 40),)
			),
			bottomNavigationBar: BottomAppBar(
				color: barColor,
				shape: const CircularNotchedRectangle(),
				notchMargin: 6.0,
				child: Container(height: 70.0)
			),
			floatingActionButton: FloatingActionButton(
				onPressed: () => setState(() {_count++;}),
				backgroundColor: barColor,
				tooltip: 'Add Button',
				child: Icon(Icons.add, size: 40.0,),
			),
			floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
		)
	);
	}
}