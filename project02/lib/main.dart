import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
	home: Home()
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
		appBar: AppBar(
			title: Text('Project02'),
			centerTitle: true,),
		body: Column(
			mainAxisAlignment: MainAxisAlignment.spaceEvenly,
			children: <Widget>[
				Container(
					margin: EdgeInsets.all(20.0),
					child: Row(
						mainAxisAlignment: MainAxisAlignment.spaceEvenly,
						children: <Widget>[
							Text(
								'Android15',
								style: TextStyle(
									fontSize: 20.0),
								),
							Icon(
								Icons.android,
								color: Colors.lightGreen,
								size: 50.0,),
							Icon(
								Icons.apps,
								size: 50.0,)
						],
					),
				),
				Container(
					margin: EdgeInsets.all(20.0),
					child: Row(
						mainAxisAlignment: MainAxisAlignment.spaceEvenly,
						children: <Widget>[
							Text(
								'Android16',
								style: TextStyle(
									fontSize: 20.0),
								),
							Icon(
								Icons.android,
								color: Colors.lightGreen,
								size: 50.0,),
							Icon(
								Icons.archive,
								size: 50.0,)
						],
					),
				),
				Container(
					child: Image.asset('assets/img1.jpg'),
					),
				Column(
					mainAxisAlignment: MainAxisAlignment.end,
					crossAxisAlignment: CrossAxisAlignment.stretch,
					children: <Widget>[
						Container(
							child: Center(child: Text('one')),
							color: Colors.orange,
							padding: EdgeInsets.all(10.0),
							margin: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
							),
						Container(
							child: Center(child: Text('two')),
							color: Colors.yellow,
							padding: EdgeInsets.all(10.0),
							margin: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
							)
					],
				)
			],
		),
		bottomNavigationBar: BottomAppBar(
			shape: const CircularNotchedRectangle(),
			child: Container(height: 70.0,),),
		floatingActionButton: FloatingActionButton(
			onPressed: () {},
			child: Icon(Icons.add),),
		floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
		);
	}
}