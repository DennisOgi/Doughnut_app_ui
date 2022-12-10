import 'package:doughnut_ui/utils/pizzatile.dart';
import 'package:flutter/material.dart';

class PizzaPage extends StatelessWidget {
  List pizza = [
    // [donut flavor, donut price, donut color, donut image]
    ['Veggie Pizza', '30', Colors.pink, 'lib/images/pizzaveggiereal.png'],
    ['Pepperoni Pizza', '40', Colors.blue, 'lib/images/pizzamushroom.png'],
    ['Mushroom Pizza', '70', Colors.green, 'lib/images/pizzapepperoni.png'],
    ['Meat Pizza', '50', Colors.orange, 'lib/images/pizzameat.png'],
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: GridView.builder(
        itemCount: pizza.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return PizzaTile(
            pizzaflavor: pizza[index][0],
            pizzaprice: pizza[index][1],
            pizzacolor: pizza[index][2],
            pizzaimage: pizza[index][3],
          );
        },
      ),
    );
  }
}
