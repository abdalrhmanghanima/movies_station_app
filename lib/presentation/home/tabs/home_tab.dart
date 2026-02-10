import 'package:films_app/core/routing/app_routes.dart';
import 'package:films_app/core/utils/app_colors.dart';
import 'package:films_app/presentation/home/widgets/custom_tab_text.dart';
import 'package:films_app/presentation/home/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int _currentTabIndex = 0;

  final List<List<String>> tabImages = [
    // Now Playing
    [
      'assets/images/movie-1.png',
      'assets/images/movie-2.png',
      'assets/images/movie-1.png',
    ],

    // Upcoming
    [
      'assets/images/movie-2.png',
      'assets/images/movie-2.png',
      'assets/images/movie-1.png',
    ],

    // Top Rated
    [
      'assets/images/movie-1.png',
      'assets/images/movie-1.png',
      'assets/images/movie-2.png',
    ],

    // Popular
    [
      'assets/images/movie-2.png',
      'assets/images/movie-1.png',
      'assets/images/movie-2.png',
    ],
  ];

  final List<String> images = [
    'assets/images/movie-1.png',
    'assets/images/movie-2.png',
    'assets/images/movie-1.png',
    'assets/images/movie-2.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(
            'What do you want to watch?',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CustomTextField()),
          const SliverToBoxAdapter(child: SizedBox(height: 12)),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16),
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: GestureDetector(
                      onTap: () => Navigator.pushNamed(context,AppRoutes.movieDetailsScreen),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          images[index],
                          height: 210,
                          width: 144,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 64)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
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
                      text: 'Now playing',
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
                      text: 'Upcoming',
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
                      text: 'Top rated',
                      isSelected: _currentTabIndex == 2,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() => _currentTabIndex = 3);
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: CustomTabText(
                      text: 'Popular',
                      isSelected: _currentTabIndex == 3,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                final currentImages = tabImages[_currentTabIndex];

                return GestureDetector(
                  onTap: () => Navigator.pushNamed(context,AppRoutes.movieDetailsScreen),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(currentImages[index], fit: BoxFit.cover),
                  ),
                );
              }, childCount: tabImages[_currentTabIndex].length),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 0.65,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
