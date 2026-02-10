import 'package:films_app/core/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'presentation/home/screens/home_screen.dart';
import 'presentation/movie_details/screens/movie_details_screen.dart';
import 'presentation/home/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: AppRoutes.splashScreen,
      routes: {
        AppRoutes.splashScreen: (context) => const SplashScreen(),
        AppRoutes.homeScreen: (context) => const HomeScreen(),
        AppRoutes.movieDetailsScreen: (context) => const MovieDetailsScreen(),
      },
    );
  }
}
