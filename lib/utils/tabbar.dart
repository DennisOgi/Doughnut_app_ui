import 'package:doughnut_ui/utils/neuBox.dart';
import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String imagepath;
  final String tabname;

  const MyTab({
    super.key,
    required this.imagepath,
    required this.tabname,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Column(
          children: [
            NeuBox(
              child: Image.asset(
                imagepath,
                height: 30,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              tabname,
              style: TextStyle(fontSize: 14, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
