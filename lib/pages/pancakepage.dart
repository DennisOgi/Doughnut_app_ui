import 'package:doughnut_ui/utils/pancaketile.dart';
import 'package:flutter/material.dart';

class PancakePage extends StatelessWidget {
  List pancake = [
    // [donut flavor, donut price, donut color, donut image]
    [
      'Blueberry Pancake',
      '30',
      Colors.pink,
      'lib/images/pancakesblueberry.png'
    ],
    ['Butter Pancake', '40', Colors.blue, 'lib/images/pancakesbutter.png'],
    [
      'Strawberry Pancake',
      '70',
      Colors.green,
      'lib/images/pancakestrawberry.png'
    ],
    ['Maple Syrup Pancake', '50', Colors.orange, 'lib/images/maplesyrup.png'],
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: GridView.builder(
        itemCount: pancake.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return PancakeTile(
            pancakeflavor: pancake[index][0],
            pancakeprice: pancake[index][1],
            pancakecolor: pancake[index][2],
            pancakeimage: pancake[index][3],
          );
        },
      ),
    );
  }
}
