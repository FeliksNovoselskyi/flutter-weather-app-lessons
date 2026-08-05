import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map<String, Map<String, int>> cities = {
    "Dnipro": {"temp": 10},
    "Kyiv": {"temp": 15},
    "Kharkiv": {"temp": 20},
    "Dnipro1": {"temp": 10},
    "Kyiv1": {"temp": 15},
    "Kharkiv1": {"temp": 20},
    "Dnipro2": {"temp": 10},
    "Kyiv2": {"temp": 15},
    "Kharkiv2": {"temp": 20},
    "Dnipro3": {"temp": 10},
    "Kyiv3": {"temp": 15},
    "Kharkiv3": {"temp": 20},
    "Dnipro4": {"temp": 10},
    "Kyiv4": {"temp": 15},
    "Kharkiv4": {"temp": 20},
    "Dnipro5": {"temp": 10},
    "Kyiv5": {"temp": 15},
    "Kharkiv5": {"temp": 20},
    "Dnipro6": {"temp": 10},
    "Kyiv6": {"temp": 15},
    "Kharkiv6": {"temp": 20},
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("first app")),
      body: Center(
        // ListView.separated() - конструктор ListView, для создания контейнера с отступами
        // child: ListView.separated(
        //   scrollDirection: Axis.vertical,
        //   itemCount: cities.length, // Колво элементов в скролл-контейнере
        //   // Принимает функцию, которая возвращает виджет
        //   itemBuilder: (context, index) {

        //     String key = cities.keys.toList()[index];
        //     int temp = cities[key]!["temp"]!;

        //     return Container(
        //       width: 100,
        //       height: 50,
        //       color: Colors.blue,
        //       child: Row(children: [Text(key), SizedBox(width: 10), Text(temp.toString())]),
        //     );
        //   },
        //   // Принимает функцию, которая возвращает разделитель
        //   separatorBuilder: (context, index) {
        //     return SizedBox(width: 10, height: 10,);
        //   },
        // ),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: cities.length, // Колво элементов в скролл-контейнере
          // Принимает функцию, которая возвращает виджет
          itemBuilder: (context, index) {
            print("Element $index");
            String key = cities.keys.toList()[index];
            int temp = cities[key]!["temp"]!;

            return Container(
              width: 100,
              height: 50,
              color: Colors.blue,
              margin: EdgeInsetsGeometry.all(10),
              child: Row(
                children: [
                  Text(key),
                  SizedBox(width: 10),
                  Text(temp.toString()),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
