import 'package:doughnut_ui/utils/neuBox.dart';
import 'package:flutter/material.dart';

class BurgerTile extends StatelessWidget {
  final String burgerflavor;
  final String burgerprice;
  final burgercolor;
  final String burgerimage;

  const BurgerTile({
    super.key,
    required this.burgerflavor,
    required this.burgerprice,
    required this.burgercolor,
    required this.burgerimage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: NeuBox(
        child: Container(
          decoration: BoxDecoration(
            color: burgercolor[200],
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
                        color: burgercolor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12))),
                    child: Text(
                      '\$$burgerprice',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Image.asset(
                burgerimage,
                height: 120,
              ),
              Text(
                burgerflavor,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Krabby Patty',
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
