import 'package:films_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AboutMovieTab extends StatelessWidget {
  const AboutMovieTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government, undertaking high-risk black ops missions in exchange for commuted prison sentences.',
      maxLines: 5,
      style: TextStyle(
        fontSize: 14,
        color: AppColors.white,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
