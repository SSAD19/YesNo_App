import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(vertical: 4),
          decoration: BoxDecoration(
            color: const Color.fromARGB(119, 255, 214, 79),
          ),
          child: const Text('In sit adipisicing culpa qui dolor dolore elit mollit.'),
        )
      ],
    );
  }
}