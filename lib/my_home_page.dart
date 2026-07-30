import 'package:flutter/material.dart';
import 'second_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool status = false;

  void toggle() {
    setState(() {
      status = !status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("first app")),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
                print(result);
              },
              child: Text("next page"),
            ),
          ],
        ),
      ),
    );
  }
}
