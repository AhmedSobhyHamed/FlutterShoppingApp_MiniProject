import 'package:flutter/material.dart';

class TextDialog extends StatelessWidget {
  const TextDialog({super.key,required this.message, required this.link});

  final String message;
  final Widget link;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(message),
      actions: [
        TextButton(onPressed: () {
          Navigator.of(context).pop();
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => link));
        }, child: Text('OK')),
      ],
    );
  }
}