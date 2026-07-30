import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final nameFieldController = TextEditingController();
  final emailFieldController = TextEditingController();
  final passwordFieldController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("second page"),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Form(
            key: formKey,
            child: Flex(
              direction: Axis.vertical,
              spacing: 10,
              children: [
                TextFormField(
                  controller: nameFieldController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Name",
                  ),
                  validator: (value) { // value - введённый текст
                    if (value == null || value.isEmpty) {
                      return "Enter name"; //  Текст ошибки
                    } else {
                      return null; //  Возвращаем null, если ошибок нет
                    }
                  },
                ),
                TextFormField(
                  controller: emailFieldController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                  ),
                  validator: (value) { // value - введённый текст
                    if (value == null || value.isEmpty) {
                      return "Enter email"; //  Текст ошибки
                    } else {
                      return null; //  Возвращаем null, если ошибок нет
                    }
                  },
                ),
                TextFormField(
                  controller: passwordFieldController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                  ),
                  validator: (value) { // value - введённый текст
                    if (value == null || value.isEmpty) {
                      return "Enter password"; //  Текст ошибки
                    } else {
                      return null; //  Возвращаем null, если ошибок нет
                    }
                  },
                ),
                TextButton(
                  onPressed: () {
                    bool validationResult = formKey.currentState!.validate();
                    
                    if (validationResult){
                      Navigator.pop(
                        context, 
                        {
                          "name": "Hello"
                        }
                      );
                    }
                  },
                  child: Text("send"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
