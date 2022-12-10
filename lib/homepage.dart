import 'package:doughnut_ui/pages/burgerpage.dart';
import 'package:doughnut_ui/pages/donutpage.dart';
import 'package:doughnut_ui/pages/pancakepage.dart';
import 'package:doughnut_ui/pages/pizzapage.dart';
import 'package:doughnut_ui/pages/smoothiepage.dart';
import 'package:doughnut_ui/utils/neuBox.dart';
import 'package:doughnut_ui/utils/tabbar.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> mytab = const [
    // DOUGHNUT TAB
    MyTab(imagepath: 'lib/icons/doughnut.png', tabname: 'Donut'),

    // BURGER TAB
    MyTab(imagepath: 'lib/icons/burger.png', tabname: 'Burger'),

    // PANCAKE TAB
    MyTab(imagepath: 'lib/icons/pancake.png', tabname: 'Pancake'),

    // PIZZA TAB
    MyTab(imagepath: 'lib/icons/pizza.png', tabname: 'Pizza'),

    // SMOOTHIE TAB
    MyTab(imagepath: 'lib/icons/smoothie.png', tabname: 'Smoothie'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: mytab.length,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Padding(
          padding: const EdgeInsets.only(left: 8, top: 15, right: 8),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: NeuBox(
                        child: Center(
                          child: Icon(
                            Icons.menu,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: NeuBox(
                        child: Center(
                          child: Icon(
                            Icons.person,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: const [
                    Text(
                      'I want to',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      'Eat',
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),

              // TAB BAR
              TabBar(tabs: mytab),

              // TAB VIEW
              Expanded(
                child: TabBarView(
                  children: [
                    // DONUT PAGE
                    DonutPage(),

                    // BURGER PAGE
                    BurgerPage(),

                    // PANCAKE PAGE
                    PancakePage(),

                    // PIZZA PAGE
                    PizzaPage(),

                    // SMOOTHIE PAGE
                    SmoothiePage(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
