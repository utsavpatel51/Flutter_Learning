import 'package:TravelAppUI/data/activity.dart';

class Destination{
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activity;

  Destination({this.imageUrl, this.city, this.country, this.description, this.activity});
}

List<Destination> destination = [
  Destination(
    imageUrl: "assets/venice.jpg",
    city: "Venice",
    country: "Italy",
    description: "Venice, the capital of northern Italy’s Veneto region, is built on more than 100 small islands in a lagoon in the Adriatic Sea. It has no roads, just canals.",
    activity: activity
  ),

  Destination(
    imageUrl: "assets/tokyo.jpg",
    city: "Tokyo",
    country: "Japan",
    description: "Venice, the capital of northern Italy’s Veneto region, is built on more than 100 small islands in a lagoon in the Adriatic Sea. It has no roads, just canals.",
    activity: activity
  ),

  Destination(
    imageUrl: "assets/newyork.jpg",
    city: "New York",
    country: "USA",
    description: "Venice, the capital of northern Italy’s Veneto region, is built on more than 100 small islands in a lagoon in the Adriatic Sea. It has no roads, just canals.",
    activity: activity
  ),

  Destination(
    imageUrl: "assets/paris.jpg",
    city: "Paris",
    country: "France",
    description: "Venice, the capital of northern Italy’s Veneto region, is built on more than 100 small islands in a lagoon in the Adriatic Sea. It has no roads, just canals.",
    activity: []
  ),

  Destination(
    imageUrl: "assets/london.jpg",
    city: "London",
    country: "UK",
    description: "Venice, the capital of northern Italy’s Veneto region, is built on more than 100 small islands in a lagoon in the Adriatic Sea. It has no roads, just canals.",
    activity: activity
  ),
];