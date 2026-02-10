import 'package:flutter/material.dart';

class CastTab extends StatelessWidget {
  const CastTab({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'assets/images/tomHolland.png',
      'assets/images/benedict.png',
      'assets/images/tomHolland.png',
      'assets/images/benedict.png',
      'assets/images/tomHolland.png',
      'assets/images/benedict.png',
    ];

    final List<String> names = [
      'Tom Holland',
      'Zendaya',
      'Benedict Cumberbatch',
      'Brad Pitt',
      'Benedict Cumberbatch',
      'Brad Pitt',
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: images.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 1,
        crossAxisSpacing: 1,
        childAspectRatio: 1.18,
      ),
      itemBuilder: (context, index) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(images[index]),
            ),
            const SizedBox(height: 8),
            Text(
              names[index],
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        );
      },
    );
  }
}
