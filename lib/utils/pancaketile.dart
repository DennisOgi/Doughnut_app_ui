import 'package:doughnut_ui/utils/neuBox.dart';
import 'package:flutter/material.dart';

class PancakeTile extends StatelessWidget {
  final String pancakeflavor;
  final String pancakeprice;
  final pancakecolor;
  final String pancakeimage;

  const PancakeTile({
    super.key,
    required this.pancakeflavor,
    required this.pancakeprice,
    required this.pancakecolor,
    required this.pancakeimage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: NeuBox(
        child: Container(
          decoration: BoxDecoration(
            color: pancakecolor[200],
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
                        color: pancakecolor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12))),
                    child: Text(
                      '\$$pancakeprice',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Image.asset(
                pancakeimage,
                height: 120,
              ),
              Text(
                pancakeflavor,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Pancake Hub',
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
