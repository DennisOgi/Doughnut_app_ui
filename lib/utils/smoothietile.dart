import 'package:doughnut_ui/utils/neuBox.dart';
import 'package:flutter/material.dart';

class SmoothieTile extends StatelessWidget {
  final String smoothieflavor;
  final String smoothieprice;
  final smoothiecolor;
  final String smoothieimage;

  const SmoothieTile({
    super.key,
    required this.smoothieflavor,
    required this.smoothieprice,
    required this.smoothiecolor,
    required this.smoothieimage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: NeuBox(
        child: Container(
          decoration: BoxDecoration(
            color: smoothiecolor[200],
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
                        color: smoothiecolor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12))),
                    child: Text(
                      '\$$smoothieprice',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Image.asset(
                smoothieimage,
                height: 120,
              ),
              Text(
                smoothieflavor,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Juice World',
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
