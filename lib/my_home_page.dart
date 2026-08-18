import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double x1 = 0;
  double x2 = 0;
  double x3 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("first app")),
      body: Column(
        children: [
          SizedBox(
            height: 360,
            child: Stack(
              children: [
                Positioned(
                  left: x1,
                  top: 10,
                  child: GestureDetector(
                    child: Container(
                      color: Colors.red,
                      width: 100,
                      height: 100,
                    ),
                    onPanUpdate: (details) {
                        double deltaX = details.delta.dx;
                        setState(() {
                          x1 += deltaX;
                        });
                      },
                  ),
                ),
                Positioned(
                  left: x2,
                  top: 120,
                  child: GestureDetector(
                    child: Container(
                      color: Colors.blue,
                      width: 100,
                      height: 100,
                    ),
                    onPanUpdate: (details) {
                        double deltaX = details.delta.dx;
                        setState(() {
                          x2 += deltaX;
                        });
                      },
                  ),
                ),
                Positioned(
                  left: x3,
                  top: 230,
                  child: GestureDetector(
                    child: Container(
                      color: Colors.green,
                      width: 100,
                      height: 100,
                    ),
                    onPanUpdate: (details) {
                        double deltaX = details.delta.dx;
                        setState(() {
                          x3 += deltaX;
                        });
                      },
                  ),
                ),
              ] 
            ),
          ),
          Column(
            spacing: 5,
            children: [
              Text("x1: ${x1.round().toString()}"),
              Text("x2: ${x2.round().toString()}"),
              Text("x3: ${x3.round().toString()}"),
            ]
          )
        ]
      )
    );
  }
}
