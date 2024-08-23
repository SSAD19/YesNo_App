import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key, 
  required this.message});

  final String message; 

  @override
  Widget build(BuildContext context) {
  
    final color = Theme.of(context).colorScheme; 

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(vertical: 4, horizontal:10),
          decoration: BoxDecoration(
            color: color.primary,
            borderRadius: BorderRadius.circular(25),

          ),
          child: Text(message),
        )
      ],
    );
  }
}