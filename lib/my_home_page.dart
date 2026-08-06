import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String jsonString = """
    {
      "number" : 1
    }
  """;

  Map jsonData = {"stroka": "Hello world"};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("first app")),
      body: Center(
        child: TextButton(
          onPressed: () async {
            // print(jsonString.runtimeType); // String
            // dynamic jsonValue = jsonDecode(jsonString);
            // print(jsonValue);
            // print(jsonValue.runtimeType);

            // jsonDecode() -> dynamic
            // jsonEncode() -> String

            // String jsonEncodedValue = jsonEncode(jsonData);
            // print(jsonEncodedValue);
            // print(jsonEncodedValue.runtimeType);
            // flutter: {"stroka":"Hello world"}
            // flutter: String

            // rootBundle.loadString() - текстовые файлы
            // rootBundle.load() - бинарные файлы (картинки)
            dynamic loadedImage = await rootBundle.load(
              "assets/images/image.jpg",
            );

            print(loadedImage.buffer.asUint8List());
            print(loadedImage.buffer.asUint8List().runtimeType);
            

          },
          child: Text("action"),
        ),
      ),
    );
  }
}
