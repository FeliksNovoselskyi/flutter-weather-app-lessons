import 'package:flutter/material.dart';
import 'second_page.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool status = false;

  final nameFieldController = TextEditingController();
  final surnameFieldController = TextEditingController();

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
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => SecondPage(
                      name: nameFieldController.text,
                      surname: surnameFieldController.text
                    )
                  )
                );
              },
              child: Text("next page"),
            ),
            TextField(
              controller: nameFieldController,
            ),
            TextField(
              controller: surnameFieldController,
            )
          ]
        )
      ),
    );
  }
}
