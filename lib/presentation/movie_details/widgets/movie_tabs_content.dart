import 'package:films_app/presentation/movie_details/tabs/cast_tab.dart';
import 'package:films_app/presentation/movie_details/tabs/reviews_tab.dart';
import 'package:flutter/material.dart';
import '../tabs/about_movie_tab.dart';

class MovieTabsContent extends StatelessWidget {
  final int currentTabIndex;

  const MovieTabsContent({super.key, required this.currentTabIndex});

  @override
  Widget build(BuildContext context) {
    switch (currentTabIndex) {
      case 0:
        return const AboutMovieTab();
      case 1:
        return const ReviewsTab();
      case 2:
        return const CastTab();
      default:
        return const SizedBox();
    }
  }
}
