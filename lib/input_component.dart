import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  const InputField({Key? key}) : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FractionallySizedBox(
        heightFactor: .5,
        widthFactor: .8,
        child: Form(
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Enter an item",
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(onPressed: () {}, child: const Text("Add"))
            ],
          ),
        ),
      ),
    );
  }
}
