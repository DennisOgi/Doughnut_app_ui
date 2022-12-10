import 'package:doughnut_ui/utils/smoothietile.dart';
import 'package:flutter/material.dart';

class SmoothiePage extends StatelessWidget {
  List smoothie = [
    // [donut flavor, donut price, donut color, donut image]
    ['Mango Smoothie', '30', Colors.pink, 'lib/images/mango.png'],
    ['Strawberry Smoothie', '40', Colors.blue, 'lib/images/smoothiestraw.png'],
    ['Pineapple Smoothie', '70', Colors.green, 'lib/images/pineapple.png'],
    ['Watermelon Smoothie', '50', Colors.orange, 'lib/images/watermelon.png'],
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: GridView.builder(
        itemCount: smoothie.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return SmoothieTile(
            smoothieflavor: smoothie[index][0],
            smoothieprice: smoothie[index][1],
            smoothiecolor: smoothie[index][2],
            smoothieimage: smoothie[index][3],
          );
        },
      ),
    );
  }
}
