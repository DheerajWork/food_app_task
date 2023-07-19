import 'package:flutter/material.dart';
import 'package:food_app_task/src/screens/dashboard_screen/dashboard_screen.dart';
import 'package:food_app_task/src/screens/intro_screen/intro_screen.dart';
import 'package:food_app_task/src/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class Food {
  bool vegOnly;
  bool eggOnly;
  String name;

  Food(this.vegOnly, this.eggOnly, this.name);
}

class _TestState extends State<Test> {
  bool vegOnly = false;
  bool eggOnly = false;

  List<Food> foodList = [
    Food(true, false, "Omlet"),
    Food(true, false, "Khema"),
    Food(true, false, "Anda Kari"),
    Food(true, false, "Boil"),
    Food(true, false, "Ghotala"),
    Food(false, true, "Burger"),
    Food(false, true, "Pizza"),
    Food(false, true, "Momos"),
    Food(false, true, "Sandwich"),
    Food(false, true, "Pasta"),
  ];

  List<Food> filteredList = [];

  filterMyList() {
    if (vegOnly) {
      filteredList =
          foodList.where((element) => element.vegOnly == vegOnly).toList();
    } else if (eggOnly) {
      filteredList =
          foodList.where((element) => element.eggOnly == eggOnly).toList();
    } else {
      filteredList.addAll(foodList);
    }

    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    filteredList.addAll(foodList);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Text("Veg"),
                Switch(
                    value: vegOnly,
                    onChanged: (c) {
                      vegOnly = c;
                      if (vegOnly) {
                        eggOnly = false;
                      }
                      filterMyList();
                      setState(() {});
                    }),
              ],
            ),
            Row(
              children: [
                Text("Egg"),
                Switch(
                    value: eggOnly,
                    onChanged: (c) {
                      eggOnly = c;
                      if (eggOnly) {
                        vegOnly = false;
                      }
                      filterMyList();
                      setState(() {});
                    }),
              ],
            ),
            if (eggOnly) Text("RRRRRRRRRRRRRR"),
            if (vegOnly) Text("TTTTTTTTTTTT"),
            Expanded(
              child: ListView.builder(
                  itemCount: filteredList.length,
                  itemBuilder: (c, i) {
                    return Text("${filteredList[i].name}");
                  }),
            )
          ],
        ),
      ),
    );
  }
}
