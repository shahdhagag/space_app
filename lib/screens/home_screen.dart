import 'package:flutter/material.dart';
import 'package:space_app/widgets/custom_button.dart';
class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> planets = [
    {
      "name": "Earth",
      "image": "assets/images/earth 1.png",
      "description":
      "Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created ideal conditions for life.",
      "stats": {
        "Distance from Sun (km)": "149,598,026",
        "Length of Day (hours)": "23.93",
        "Orbital Period (Earth years)": "1",
        "Radius (km)": "6371",
        "Mass (kg)": "5.972 × 10²⁴",
        "Surface Area (km²)": "5.10 × 10⁸",
        "Gravity (m/s²)": "9.81",
      },
    },
    {
      "name": "Mercury",
      "image": "assets/images/mercury.png",
      "description":
      "Mercury is the smallest planet in our solar system and closest to the Sun. It has a very thin atmosphere and experiences extreme temperatures.",
      "stats": {
        "Distance from Sun (km)": "57,910,000",
        "Length of Day (hours)": "1407.6",
        "Orbital Period (Earth years)": "0.24",
        "Radius (km)": "2439.7",
        "Mass (kg)": "3.285 × 10²³",
        "Surface Area (km²)": "7.48 × 10⁷",
        "Gravity (m/s²)": "3.7",
      },
    },
    {
      "name": "Jupiter",
      "image": "assets/images/jupiter.png",
      "description":
      "Jupiter is the largest planet in our solar system, a gas giant with a strong magnetic field and dozens of moons.",
      "stats": {
        "Distance from Sun (km)": "778,500,000",
        "Length of Day (hours)": "9.93",
        "Orbital Period (Earth years)": "11.86",
        "Radius (km)": "69911",
        "Mass (kg)": "1.898 × 10²⁷",
        "Surface Area (km²)": "6.14 × 10¹⁰",
        "Gravity (m/s²)": "24.79",
      },
    },
    {
      "name": "Venus",
      "image": "assets/images/venus.png",
      "description":
      "Venus is similar in size to Earth but has a thick toxic atmosphere that traps heat, making it the hottest planet.",
      "stats": {
        "Distance from Sun (km)": "108,200,000",
        "Length of Day (hours)": "5832.5",
        "Orbital Period (Earth years)": "0.62",
        "Radius (km)": "6051.8",
        "Mass (kg)": "4.867 × 10²⁴",
        "Surface Area (km²)": "4.60 × 10⁸",
        "Gravity (m/s²)": "8.87",
      },
    },
    {
      "name": "Uranus",
      "image": "assets/images/uranus 1.png",
      "description":
      "Uranus is an ice giant with a blue-green color due to methane in its atmosphere. It rotates on its side.",
      "stats": {
        "Distance from Sun (km)": "2,870,000,000",
        "Length of Day (hours)": "17.24",
        "Orbital Period (Earth years)": "84",
        "Radius (km)": "25362",
        "Mass (kg)": "8.681 × 10²⁵",
        "Surface Area (km²)": "8.083 × 10⁹",
        "Gravity (m/s²)": "8.69",
      },
    },
    {
      "name": "Sun",
      "image": "assets/images/sun.png",
      "description":
      "The Sun is the star at the center of our solar system. It provides light and heat essential for life on Earth.",
      "stats": {
        "Distance from Sun (km)": "0",
        "Length of Day (hours)": "609.12",
        "Orbital Period (Earth years)": "-",
        "Radius (km)": "696340",
        "Mass (kg)": "1.989 × 10³⁰",
        "Surface Area (km²)": "6.09 × 10¹²",
        "Gravity (m/s²)": "274",
      },
    },
    {
      "name": "Saturn",
      "image": "assets/images/saturn.png",
      "description":
      "Saturn is famous for its beautiful rings. It is a gas giant with many moons and a strong magnetic field.",
      "stats": {
        "Distance from Sun (km)": "1,434,000,000",
        "Length of Day (hours)": "10.7",
        "Orbital Period (Earth years)": "29.46",
        "Radius (km)": "58232",
        "Mass (kg)": "5.683 × 10²⁶",
        "Surface Area (km²)": "4.27 × 10¹⁰",
        "Gravity (m/s²)": "10.44",
      },
    },
    {
      "name": "Neptune",
      "image": "assets/images/neptune.png",
      "description":
      "Neptune is a blue ice giant. It has strong winds and storms and is the farthest planet from the Sun.",
      "stats": {
        "Distance from Sun (km)": "4,495,000,000",
        "Length of Day (hours)": "16.11",
        "Orbital Period (Earth years)": "164.8",
        "Radius (km)": "24622",
        "Mass (kg)": "1.024 × 10²⁶",
        "Surface Area (km²)": "7.618 × 10⁹",
        "Gravity (m/s²)": "11.15",
      },
    },
    {
      "name": "Mars",
      "image": "assets/images/mars.png",
      "description":
      "Mars is known as the Red Planet. It has a thin atmosphere, polar ice caps, and is a target for future human exploration.",
      "stats": {
        "Distance from Sun (km)": "227,943,824",
        "Length of Day (hours)": "24.6",
        "Orbital Period (Earth years)": "1.88",
        "Radius (km)": "3389.5",
        "Mass (kg)": "6.417 × 10²³",
        "Surface Area (km²)": "1.44 × 10⁸",
        "Gravity (m/s²)": "3.71",
      },
    },
  ];


  int currentIndex = 0;

   void nextPlanet() {
     setState(() {
       if (currentIndex < planets.length - 1) {
         currentIndex++;
       }
     });
   }
  void previousPlanet() {
    setState(() {
      if (currentIndex > 0) {
        currentIndex--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF0d0d0d),
      body:Column(
        children: [
          Stack(
              children:[
            Image.asset("assets/images/appbar_image.png"),
            Positioned(
              top: 30,
              left: 20,
              right: 20,
              child: Text("Explore",
                textAlign: TextAlign.center,
                style: TextStyle(
                color: Colors.white,
                 fontSize: 24,
                fontWeight: FontWeight.bold
              ),),
            ),

            Positioned(
              top: 170,
              left: 20,
              //right: 20,
              child: Text("Which planet \nwould you like to explore?",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ),),
            ),
                ]
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [

                Image.asset(planets[currentIndex]["image"]!,height: 340,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 23,
                      backgroundColor:Color(0XFFEE403D),
                      child: IconButton(

                          onPressed: previousPlanet,
                          icon:Icon(Icons.arrow_back,size: 25,color: Colors.white,)
                      ),
                    ),
                    Text(planets[currentIndex]["name"]!,style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                    CircleAvatar(
                      radius: 23,
                      backgroundColor:Color(0XFFEE403D),
                      child: IconButton(

                          onPressed: nextPlanet,
                          icon:Icon(Icons.arrow_forward,size: 25,color: Colors.white,)
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 50,),

                CustomButton(
                  title: 'Explore ${planets[currentIndex]["name"]!}',
                  location: '/planetDetails',
                  planetData: planets[currentIndex],
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}
