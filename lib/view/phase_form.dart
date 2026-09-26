import 'package:flutter/material.dart';
import 'package:first_flutter_project/view/parts/form.dart';

class PhaseForm extends StatelessWidget {
  const PhaseForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration Form'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () {
            Navigator.of(context).pop();
          }, icon: Icon(Icons.close)),
        ],
      ),
      body: RegistrationForm(),
    );
  }
}