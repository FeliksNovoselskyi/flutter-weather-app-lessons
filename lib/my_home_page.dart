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
  //
  Future<String> getCity() async {
    await Future.delayed(const Duration(seconds: 2));

    return "Dnipro";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("first app")),
      body: FutureBuilder<String>( 
        future: null,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            print("Done");
          } else if (snapshot.connectionState == ConnectionState.none) {
            print("None");
          }
          // ConnectionState.waiting;

          return Text(snapshot.data ?? "No value");
        },
      ),
    );
  }
}
