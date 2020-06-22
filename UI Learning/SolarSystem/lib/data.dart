class PlanetInfo{
  final int position;
  final String name;
  final String icon;
  final String desc;
  final List<String> images;
  
  PlanetInfo({this.position, this.name, this.icon, this.desc, this.images });

}

List<PlanetInfo> planets = [
  PlanetInfo(position : 1, name: "Mercury", icon: "assets/mercury.png", desc: "The smallest and fastest planet, Mercury is the closest planet to the Sun and whips around it every 88 Earth days.",
  images: [
        'https://cdn.pixabay.com/photo/2013/07/18/10/57/mercury-163610_1280.jpg',
        'https://cdn.pixabay.com/photo/2014/07/01/11/38/planet-381127_1280.jpg',
        'https://cdn.pixabay.com/photo/2015/06/26/18/48/mercury-822825_1280.png',
        'https://image.shutterstock.com/image-illustration/mercury-high-resolution-images-presents-600w-367615301.jpg'
      ]),
  PlanetInfo(position : 2, name: "Venus", icon: "assets/venus.png", desc: "Spinning in the opposite direction to most planets, Venus is the hottest planet, and one of the brightest objects in the sky.",
  images: [
        'https://cdn.pixabay.com/photo/2011/12/13/14/39/venus-11022_1280.jpg',
        'https://image.shutterstock.com/image-photo/solar-system-venus-second-planet-600w-515581927.jpg'
      ]),
  PlanetInfo(position : 3, name: "Earth", icon: "assets/earth.png", desc: "The place we call home, Earth is the third rock from the sun and the only planet with known life on it – and lots of it too!",
  images: [
        'https://cdn.pixabay.com/photo/2011/12/13/14/31/earth-11015_1280.jpg',
        'https://cdn.pixabay.com/photo/2011/12/14/12/11/astronaut-11080_1280.jpg',
        'https://cdn.pixabay.com/photo/2016/01/19/17/29/earth-1149733_1280.jpg',
        'https://image.shutterstock.com/image-photo/3d-render-planet-earth-viewed-600w-1069251782.jpg'
      ]),
  PlanetInfo(position : 4, name: "Mars", icon: "assets/mars.png", desc: "The red planet is dusty, cold world with a thin atmosphere and is home to four NASA robots.",
  images: [
        'https://nineplanets.org/wp-content/uploads/2019/09/mars.png'
  ]),
  PlanetInfo(position : 5, name: "Jupiter", icon: "assets/jupiter.png", desc: "Jupiter is a massive planet, twice the size of all other planets combined and has a centuries-old storm that is bigger than Earth.",
  images: [
        'https://nineplanets.org/wp-content/uploads/2019/09/jupiter.png'
  ]),
  PlanetInfo(position : 6, name: "Saturn", icon: "assets/saturn.png", desc: "The most recognizable planet with a system of icy rings, Saturn is a very unique and interesting planet.",
  images: [
        'https://nineplanets.org/wp-content/uploads/2019/09/saturn.png'
  ]),
  PlanetInfo(position : 7, name: "Uranus", icon: "assets/uranus.png", desc: "Uranus has a very unique rotation–it spins on its side at an almost 90-degree angle, unlike other planets.",
  images: [
        'https://nineplanets.org/wp-content/uploads/2019/09/uranus.png'
  ]),
  PlanetInfo(position : 8, name: "Neptune ", icon: "assets/neptune.png", desc: "Neptune is now the most distant planet and is a cold and dark world nearly 3 billion miles from the Sun.",
  images: [
        'https://nineplanets.org/wp-content/uploads/2019/09/neptune.png'
  ]),
];