import 'package:doughnut_ui/utils/neuBox.dart';
import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutflavor;
  final String donutprice;
  final donutcolor;
  final String donutimage;

  const DonutTile({
    super.key,
    required this.donutflavor,
    required this.donutprice,
    required this.donutcolor,
    required this.donutimage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: NeuBox(
        child: Container(
          decoration: BoxDecoration(
            color: donutcolor[200],
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
                        color: donutcolor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12))),
                    child: Text(
                      '\$$donutprice',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Image.asset(
                donutimage,
                height: 120,
              ),
              Text(
                donutflavor,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Cold Stone',
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
