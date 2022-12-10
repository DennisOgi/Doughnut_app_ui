import 'package:doughnut_ui/utils/burgertile.dart';
import 'package:flutter/material.dart';

class BurgerPage extends StatelessWidget {
  List burger = [
    // [donut flavor, donut price, donut color, donut image]
    ['Burger', '30', Colors.pink, 'lib/images/burger.png'],
    ['Meat Burger', '40', Colors.blue, 'lib/images/burgermeat.png'],
    ['Craby Patty', '70', Colors.green, 'lib/images/burgerpatty.png'],
    ['Veggie Burger', '50', Colors.orange, 'lib/images/burgerveggie.png'],
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: GridView.builder(
        itemCount: burger.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return BurgerTile(
            burgerflavor: burger[index][0],
            burgerprice: burger[index][1],
            burgercolor: burger[index][2],
            burgerimage: burger[index][3],
          );
        },
      ),
    );
  }
}
