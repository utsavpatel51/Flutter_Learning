import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
	final Map char;
  	DetailPage(this.char);
	@override
	Widget build(BuildContext context) {
		return Scaffold(
      backgroundColor: Color(0xFFf0f0f0),
			appBar: buildAppBar(),
			body: buildContainer(),
		);
	}

	Widget textTitle(String title, double size, Color clr){
		return Text(
			title,
			style: TextStyle(
				fontFamily: 'IndieFlower',
				fontSize: size,
				fontWeight: FontWeight.bold,
				color: clr,
				letterSpacing: 1.0,
			),
			textAlign: TextAlign.justify,
		);
	}

	Container buildContainer() {
	  return Container(
			child: Padding(
			padding: EdgeInsets.only(left: 20.0, right: 20.0),
			child: SingleChildScrollView(
				child: Column(
				crossAxisAlignment: CrossAxisAlignment.start,
				children: <Widget>[
					Padding(
						padding: const EdgeInsets.only(top:8.0),
						child: Center(
						child: CircleAvatar(
								backgroundImage: AssetImage(char['Img']),
								radius: 60.0,
						),
						),
					),
					textTitle('Class', 20.0, Color(0xFF364f6b)),
					textTitle(char['Class'], 25.0, Color(0xFFfc5185)),
					SizedBox(height: 20.0,),
					textTitle('Noble Phantasm', 20.0, Color(0xFF364f6b)),
					textTitle(char['NP'], 25.0, Color(0xFFfc5185)),
					SizedBox(height: 20.0,),
					textTitle('Back Story', 20.0, Color(0xFF364f6b)),
					textTitle(char['Story'], 20.0, Color(0xFFfc5185)),
				],
				),
			),
			),
		);
	}

	AppBar buildAppBar() {
	  return AppBar(
			title: Text(
				char['Name'],
				style: TextStyle(
					fontFamily: 'IndieFlower',
					fontSize: 25.0,
					fontWeight: FontWeight.bold,
				)
			),
		centerTitle: true,
		backgroundColor: Color(0xFF364f6b),
		elevation: 0.0,
		);
	}
}