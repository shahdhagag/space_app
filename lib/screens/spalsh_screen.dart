import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/custom_button.dart';

class SpalshScreen extends StatelessWidget {
  const SpalshScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Background Image
          Image.asset(
            "assets/images/background_image.png",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),

          /// Big Title
          Positioned(
            left: 20,
            top: 250,
            child: Text(
              "Explore \nThe \nUniverse",
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 48,
                color: Colors.white,
              ),
            ),
          ),

          /// Explore Button
          Positioned(
            left: 20,
            right: 20,
            bottom: 10,
            child: CustomButton(title: 'Explore', location: '/home'),
          ),
        ],
      ),
    );
  }
}
