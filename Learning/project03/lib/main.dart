import 'package:flutter/material.dart';
import 'char_data.dart';
//https://medium.com/@dltlabs/how-to-build-a-flutter-card-list-in-less-than-10-minutes-9839f79a6c08

void main() => runApp(MaterialApp(
		home: Home(),
		debugShowCheckedModeBanner: false
));

Widget textTitle(String title){
	return Text(
		title,
		style: TextStyle(
			fontFamily: 'IndieFlower',
			fontSize: 16.0,
			fontWeight: FontWeight.bold,
			color: Colors.indigo,
			letterSpacing: 1.0,
			),
);}


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
	var charData = CharData.getData;
	return Scaffold(
		appBar: AppBar(
			title: Text(
				'Fate/Zero',
				style: TextStyle(
					fontFamily: 'IndieFlower',
					fontSize: 25.0,
					fontWeight: FontWeight.bold,
					)
				),
			centerTitle: true,
			backgroundColor: Colors.grey[850],
			elevation: 0.0,
		),
		body: Padding(
		  padding: const EdgeInsets.all(8.0),
			child: ListView.builder(
				itemCount: charData.length,
				itemBuilder: (context, index){
					return Card(
						margin: EdgeInsets.only(bottom: 15.0),
						color: Colors.grey[200],
						elevation: 4,
						child: Column(
							children: <Widget>[
								Row(
									crossAxisAlignment: CrossAxisAlignment.start,
									children: <Widget>[
										Padding(
											padding: const EdgeInsets.only(left: 5.0, top: 5.0),
											child: CircleAvatar(
												backgroundImage: AssetImage(charData[index]['Img']),
												radius: 50.0,
											),
										),
										SizedBox(width: 30.0,),
										Padding(
											padding: const EdgeInsets.only(top: 8.0),
											child: Column(
											crossAxisAlignment: CrossAxisAlignment.start,
											children: <Widget>[
												textTitle('Class:'),
												Divider(height: 5.0, color: Colors.grey[200],),
												textTitle('Name:'),
												Divider(height: 5.0, color: Colors.grey[200],),
												textTitle('Noble\nPhantasm:'),
											],
											),
										),
										Expanded(
											child: Padding(
											padding: const EdgeInsets.all(8.0),
											child: Column(
												crossAxisAlignment: CrossAxisAlignment.start,
												children: <Widget>[
													textTitle(charData[index]['Class']),
													Divider(height: 5.0, color: Colors.grey[200],),
													textTitle(charData[index]['Name']),
													Divider(height: 5.0, color: Colors.grey[200],),
													textTitle(charData[index]['NP']),
												],
											),
											),
										),
									],
								),
								Padding(
									padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 4.0),
									child: Text(
										charData[index]['Story'],
										textAlign: TextAlign.justify,
										style: TextStyle(
											fontFamily: 'IndieFlower',
											fontSize: 14.0,
											fontWeight: FontWeight.w600,
											color: Colors.black,
											letterSpacing: 1.0,
										),
									),
								),
							],
						),
					);
				},
		),
		)
	);
  }
}