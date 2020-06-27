class Activity{
  String imageUrl;
  String name;
  String type;
  List<String> startTimes;
  int price;
  int rating;

  Activity({this.imageUrl, this.name, this.type, this.startTimes, this.price, this.rating});
}

List<Activity> activity = [
  Activity(
    imageUrl: "assets/venice.jpg",
    name: "St. Marks Basillica",
    type: "SightSeen Tour",
    startTimes: ["9:00 am", "11:00 am", "6:00 pm"],
    price: 30,
    rating: 2
  ),
  Activity(
    imageUrl: "assets/venice.jpg",
    name: "Walking tour gondola ride",
    type: "SightSeen Tour",
    startTimes: ["7:00 am", "8:00 am"],
    price: 210,
    rating: 5
  ),
  Activity(
    imageUrl: "assets/venice.jpg",
    name: "Murano and Burano Tour",
    type: "SightSeen Tour",
    startTimes: ["6:00 am", "7:00 am"],
    price: 300,
    rating: 1
  )
];