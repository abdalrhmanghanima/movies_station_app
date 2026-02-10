import 'package:films_app/core/utils/app_colors.dart';
import 'package:films_app/core/utils/app_icons.dart';
import 'package:films_app/core/utils/app_images.dart';
import 'package:films_app/presentation/home/widgets/custom_tab_text.dart';
import 'package:films_app/presentation/movie_details/widgets/movie_tabs_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MovieDetailsScreen extends StatefulWidget {
  const MovieDetailsScreen({super.key});

  @override
  State<MovieDetailsScreen> createState() => _MovieDetailsScreenState();
}

class _MovieDetailsScreenState extends State<MovieDetailsScreen> {
  int _currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            AppIcons.arrowLeft,
            width: 25,
            height: 25,
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
        title: Text(
          'Detail',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                AppIcons.bookmark,
                width: 25,
                height: 25,
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.asset(
                    AppImages.cover,
                    width: double.infinity,
                    height: 260,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: -90,
                  left: 25,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      AppImages.spiderMan,
                      width: 110,
                      height: 160,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(AppIcons.star),
                        SizedBox(width: 4),
                        Text(
                          '9.5',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.yellow,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(110, 20, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Spiderman No Way Home',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 18),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(70, 35, 16, 16),
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppIcons.calendar,
                    colorFilter: ColorFilter.mode(
                      AppColors.darkGray,
                      BlendMode.srcIn,
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    '2021',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.darkGray,
                    ),
                  ),
                  SizedBox(width: 12),
                  Container(
                    height: 22,
                    width: 1,
                    child: VerticalDivider(
                      color: AppColors.darkGray,
                      thickness: 1.3,
                    ),
                  ),
                  SizedBox(width: 12),
                  SvgPicture.asset(
                    AppIcons.clock,
                    colorFilter: ColorFilter.mode(
                      AppColors.darkGray,
                      BlendMode.srcIn,
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    '148 Minutes',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.darkGray,
                    ),
                  ),
                  SizedBox(width: 12),
                  Container(
                    height: 22,
                    width: 1,
                    child: VerticalDivider(
                      color: AppColors.darkGray,
                      thickness: 1.3,
                    ),
                  ),
                  SizedBox(width: 12),
                  SvgPicture.asset(
                    AppIcons.ticket,
                    colorFilter: ColorFilter.mode(
                      AppColors.darkGray,
                      BlendMode.srcIn,
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    'Action',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.darkGray,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() => _currentTabIndex = 0);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: CustomTabText(
                    text: 'About Movie',
                    isSelected: _currentTabIndex == 0,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() => _currentTabIndex = 1);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: CustomTabText(
                    text: 'Reviews',
                    isSelected: _currentTabIndex == 1,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() => _currentTabIndex = 2);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: CustomTabText(
                    text: 'Cast',
                    isSelected: _currentTabIndex == 2,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: MovieTabsContent(
                currentTabIndex: _currentTabIndex,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
