import 'package:doughnut_ui/utils/neuBox.dart';
import 'package:flutter/material.dart';

class PizzaTile extends StatelessWidget {
  final String pizzaflavor;
  final String pizzaprice;
  final pizzacolor;
  final String pizzaimage;

  const PizzaTile({
    super.key,
    required this.pizzaflavor,
    required this.pizzaprice,
    required this.pizzacolor,
    required this.pizzaimage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: NeuBox(
        child: Container(
          decoration: BoxDecoration(
            color: pizzacolor[200],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: pizzacolor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12))),
                    child: Text(
                      '\$$pizzaprice',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Image.asset(
                pizzaimage,
                height: 120,
              ),
              Text(
                pizzaflavor,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Domino\'s pizza',
                style: TextStyle(color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.black,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
