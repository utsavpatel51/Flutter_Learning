import 'package:flutter/material.dart';
import 'char_data.dart';
import 'detail_page.dart';

void main() => runApp(MaterialApp(
		home: Home(),
		debugShowCheckedModeBanner: false
));


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
	var charData = CharData.getData;
	return Scaffold(
    backgroundColor: Color(0xFFf0f0f0),
		appBar: buildAppBar(),
		body: Container(
			child: ListView.builder(
				itemCount: charData.length,
				itemBuilder: (context, index){
					return charCard(charData, index, context);
				},
			),
		)
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

  Card charCard(List charData, int index, BuildContext context) {
    return Card(
		child: ListTile(
			contentPadding: EdgeInsets.all(5.0),
			leading: CircleAvatar(
				backgroundImage: AssetImage(charData[index]['Img']),
				radius: 20.0,
			),
			title: textTitle(charData[index]['Name'], 16.0, Color(0xFF364f6b)),
			subtitle: Text(
        charData[index]['Class'],
        style: TextStyle(
          color: Color(0xFF43dde6)
        ),
        ),
			onTap: (){
				Navigator.push(context, 
					PageRouteBuilder(
						pageBuilder: (c, a1, a2) => DetailPage(charData[index]),
						transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
						transitionDuration: Duration(milliseconds: 800),
					),
				);
			},
			trailing: icon(charData[index]),
		),
	);
  }

  IconButton icon(Map data){
	  if(data['Fav']){
		  return IconButton(
			onPressed: (){
				setState(() {
				  data['Fav'] = false;
				});
			},
			icon: Icon(
				Icons.favorite,
				color: Color(0xFFfc5185)
				)
		);
	  }
	  else{
		  return IconButton(
			onPressed: (){
				setState(() {
				  data['Fav'] = true;
				});
			},
			icon: Icon(Icons.favorite_border)
		);
	  }
  }

  AppBar buildAppBar() {
    return AppBar(
			title: Text(
				'Fate/Zero',
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