import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PlanetDetailsScreen extends StatefulWidget {
  final Map<String, dynamic> planetData;
  const PlanetDetailsScreen({super.key, required this.planetData});
  @override
  State<PlanetDetailsScreen> createState() => _PlanetDetailsScreenState();
}

class _PlanetDetailsScreenState extends State<PlanetDetailsScreen> {
  bool isExpanded = false;

  late Map<String, dynamic> planetData;

  @override
  void initState() {
    super.initState();
    planetData = widget.planetData;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFF0d0d0d),
        body: SingleChildScrollView(
          child: Column(
            children: [
              /// Top image with text
              Stack(
                children: [
                  Image.asset(
                    "assets/images/appbar_image.png",
                    width: double.infinity,
                    height: 140,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 16,
                    left: 10,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: const Color(0XFFEE403D),
                      child: IconButton(
                        onPressed: context.pop,
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 160,
                    child: Text(
                      planetData["name"],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 10,
                    child: Text(
                      "${planetData["name"]}: Our Blue Marble",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
      
              /// Planet image
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Image.asset(planetData["image"]),
                    const SizedBox(height: 10),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "About",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                    const SizedBox(height: 10),
                    Text(
                      isExpanded
                          ? planetData["description"]
                          : (planetData["description"].length > 120
                                ? planetData["description"].substring(0, 120) +
                                      "..."
                                : planetData["description"]),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          isExpanded = !isExpanded;
                        });
                      },
                      child: Text(
                        isExpanded ? "Read less" : "Read more",
                        style: const TextStyle(color: Colors.blue),
                      ),
                    ),
      
                    /// Planet stats
                    ...planetData["stats"].entries.map(
                      (entry) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              entry.key,
                              style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              entry.value,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
