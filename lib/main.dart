import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:recipe_app/colors.dart';
import 'package:recipe_app/pages/homepage.dart';
import 'package:recipe_app/pages/starting_page.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        duration: 3000,
        splash: Image.asset('assets/gifs/splash.gif'),
        nextScreen: StartingpageContent(),
        splashIconSize: 150,
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: background,
      ),
    );
  }
}
