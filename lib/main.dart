import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:space_app/screens/home_screen.dart';
import 'package:space_app/screens/planet_details.dart';
import 'package:space_app/screens/spalsh_screen.dart';

void main() {
  runApp(const MyApp());
}
final GoRouter _router=GoRouter(
  initialLocation: "/",
    routes: [
      GoRoute(
          path: "/",
          builder: (context,state)=> SpalshScreen()),
      GoRoute(
          path: "/home",
          builder: (context,state)=>HomeScreen()),
      GoRoute(
        path: "/planetDetails",
        builder: (context, state) {
          final planetData = state.extra as Map<String, dynamic>; // get passed data
          return PlanetDetailsScreen(planetData: planetData);
        },
      ),


    ]
);
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
      title: 'Space App',
      theme: ThemeData(
colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),

    );
  }
}
