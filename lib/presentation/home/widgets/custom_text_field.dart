import 'package:films_app/core/utils/app_colors.dart';
import 'package:films_app/core/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24,right: 24),
      child: SizedBox(
        height: 42,
        width: 330,
        child: TextField(
          style: TextStyle(
              color: AppColors.white
          ),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 16,
            ),
            filled: true,
            fillColor: AppColors.gray,
            hintText: 'Search',
            hintStyle: TextStyle(
              color: AppColors.grayBlue,
            ),

            suffixIconConstraints: const BoxConstraints(
              minWidth: 32,
              minHeight: 32,
            ),

            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 12),
              child: SvgPicture.asset(
                AppIcons.search,
                width: 18,
                height: 18,
                fit: BoxFit.contain,
                colorFilter: const ColorFilter.mode(
                  AppColors.grayBlue,
                  BlendMode.srcIn,
                ),
              ),
            ),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),

        ),
      ),
    );
  }
}
