import 'package:doughnut_ui/utils/donuttile.dart';
import 'package:flutter/material.dart';

class DonutPage extends StatelessWidget {
  List donut = [
    // [donut flavor, donut price, donut color, donut image]
    ['StrawBerry', '30', Colors.pink, 'lib/images/strawberry.png'],
    ['Sprinkle Bomb', '40', Colors.blue, 'lib/images/sprikles.png'],
    ['Choco Tap', '70', Colors.green, 'lib/images/chocolate.png'],
    ['Glazed Velvet', '50', Colors.orange, 'lib/images/glazed.png'],
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: GridView.builder(
        itemCount: donut.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return DonutTile(
            donutflavor: donut[index][0],
            donutprice: donut[index][1],
            donutcolor: donut[index][2],
            donutimage: donut[index][3],
          );
        },
      ),
    );
  }
}
