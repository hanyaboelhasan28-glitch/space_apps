import '../core/app_assets.dart';

class Planet {
  String name;
  String imagePath;
  String model;
  String title;
  String about;
  String distanceFromSun;
  String radius;
  String length0FDay;
  String mass;
  String gravity;
  String surfaceArea;
  String orbitPeriod;

  Planet({
    required this.name,

    required this.imagePath,

    required this.model,

    required this.title,

    required this.about,

    required this.distanceFromSun,

    required this.length0FDay,

    required this.orbitPeriod,

    required this.radius,

    required this.mass,

    required this.gravity,

    required this.surfaceArea,
  });
  static List<Planet> planets = [
    Planet(
      name: "Sun",
      imagePath: AppAssets.sun,
      model: "sun.glb",
      title: "The Sun: Our Solar System's Star",
      about:
          "The Sun is the heart of our solar system, a massive ball of hot plasma that provides the energy necessary for life on Earth.",
      distanceFromSun: "0 km",
      length0FDay: "0 hours",
      orbitPeriod: "0 Earth years",
      radius: "695700 km",
      mass: "1.989 × 10³⁰ kg",
      gravity: "274 m/s²",
      surfaceArea: "6.09 × 10¹² km²",
    ),
    Planet(
      name: "Mercury",
      imagePath: AppAssets.mercury,
      model: "mercury.glb",
      title: "Mercury: The Closest Planet",
      about:
          "Mercury is the smallest planet in our solar system and the closest to the Sun.",
      distanceFromSun: "57,909,227 km",
      length0FDay: "1407.6 hours",
      orbitPeriod: "0.24 Earth years",
      radius: "2439.7 km",
      mass: "3.301 × 10²³ kg",
      gravity: "3.7 m/s²",
      surfaceArea: "7.48 × 10⁷ km²",
    ),
    Planet(
      name: "Venus",
      imagePath: AppAssets.venus,
      model: "venus.glb",
      title: "Venus: Earth's Toxic Twin",
      about:
          "Venus is often referred to as Earth's twin due to its similar size and structure, but it has a toxic atmosphere.",
      distanceFromSun: "108,209,072 km",
      length0FDay: "5832.2 hours",
      orbitPeriod: "0.62 Earth years",
      radius: "6051.8 km",
      mass: "4.867 × 10²⁴ kg",
      gravity: "8.87 m/s²",
      surfaceArea: "4.60 × 10⁸ km²",
    ),
    Planet(
      name: "Earth",
      imagePath: AppAssets.earth,
      model: "earth.glb",
      title: "Earth: Our Blue Marble",
      about:
          "Earth is the only known planet in the universe that supports life.",
      distanceFromSun: "149,598,026 km",
      length0FDay: "23.93 hours",
      orbitPeriod: "1 Earth year",
      radius: "6371 km",
      mass: "5.972 × 10²⁴ kg",
      gravity: "9.81 m/s²",
      surfaceArea: "5.10 × 10⁸ km²",
    ),
    Planet(
      name: "Mars",
      imagePath: AppAssets.mars,
      model: "mars.glb",
      title: "Mars: The Red Planet",
      about:
          "Mars is often called the Red Planet due to its reddish appearance.",
      distanceFromSun: "227,943,824 km",
      length0FDay: "24.62 hours",
      orbitPeriod: "1.88 Earth years",
      radius: "3389.5 km",
      mass: "6.39 × 10²³ kg",
      gravity: "3.71 m/s²",
      surfaceArea: "1.45 × 10⁸ km²",
    ),
    Planet(
      name: "Jupiter",
      imagePath: AppAssets.jupiter,
      model: "jupiter.glb",
      title: "Jupiter: The Gas Giant",
      about:
          "Jupiter is the largest planet in our solar system and is known for its Great Red Spot.",
      distanceFromSun: "778,547,669 km",
      length0FDay: "9.92 hours",
      orbitPeriod: "11.86 Earth years",
      radius: "69,911 km",
      mass: "1.898 × 10²⁷ kg",
      gravity: "24.79 m/s²",
      surfaceArea: "6.21 × 10¹⁵ km²",
    ),
    Planet(
      name: "Saturn",
      imagePath: AppAssets.saturn,
      model: "saturn.glb",
      title: "Saturn: The Ringed Planet",
      about: "Saturn is best known for its spectacular ring system.",
      distanceFromSun: "1,426,666,422 km",
      length0FDay: "10.66 hours",
      orbitPeriod: "29.46 Earth years",
      radius: "58,232 km",
      mass: "5.683 × 10²⁶ kg",
      gravity: "10.44 m/s²",
      surfaceArea: "4.27 × 10¹⁵ km²",
    ),
    Planet(
      name: "Uranus",
      imagePath: AppAssets.uranus,
      model: "uranus.glb",
      title: "Uranus: The Tilted Planet",
      about:
          "Uranus is an ice giant with a unique axial tilt that makes it rotate on its side.",
      distanceFromSun: "2,870,990,000 km",
      length0FDay: "17.24 hours",
      orbitPeriod: "84.01 Earth years",
      radius: "25,362 km",
      mass: "8.681 × 10²⁵ kg",
      gravity: "8.69 m/s²",
      surfaceArea: "8.1 × 10¹⁵ km²",
    ),
    Planet(
      name: "Neptune",
      imagePath: AppAssets.neptune,
      model: "neptune.glb",
      title: "Neptune: The Distant World",
      about:
          "Neptune is the farthest planet from the Sun and is known for its deep blue color.",
      distanceFromSun: "4,498,252,900 km",
      length0FDay: "16.11 hours",
      orbitPeriod: "164.8 Earth years",
      radius: "24,622 km",
      mass: "1.024 × 10²⁶ kg",
      gravity: "11.15 m/s²",
      surfaceArea: "7.65 × 10¹⁵ km²",
    ),
  ];
}
