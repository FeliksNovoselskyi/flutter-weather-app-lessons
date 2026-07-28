import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String name;
  final String surname;

  const SecondPage({
    super.key, 
    required this.name, 
    required this.surname
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("second page"),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Text("Hello"),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("back"),
          ),
          Text(name),
          Text(surname)
        ],
      ),
    );
  }
}
