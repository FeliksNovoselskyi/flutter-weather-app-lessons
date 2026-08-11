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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("first app")),
      body: Center(
        child: TextButton(
          onPressed: () async {
            try {
              http.Response response = await http
                  .post(
                    Uri.https(
                      "jsonplaceholder.typicode.com",
                      "/posts",
                    ), // адрес ресурса,
                    headers: {},
                    body: jsonEncode({
                      // обязательно jsonEncode
                      "title": "Hello",
                      "body": "My first post",
                      "userId": 1,
                    }),
                  )
                  .timeout(const Duration(seconds: 10)); // Duration

                  print(response); // flutter: Instance of 'Response'
                  print(response.body);
                  

                  if (response.statusCode >= 200 && response.statusCode < 300) {

                  } else if (response.statusCode >= 400 && response.statusCode < 500) {

                  }
            } on TimeoutException {
              print("timeout");
            } catch (error) {
              print(error);
            }
          },
          child: Text("action"),
        ),
      ),
    );
  }
}
