import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class OtherMessageBubble extends StatelessWidget {
  const OtherMessageBubble({super.key,
  required this.message});

  final Message message;

  @override
  Widget build(BuildContext context) {
  
    final color = Theme.of(context).colorScheme; 

    return Column(      
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(vertical: 4, horizontal:6),
          decoration: BoxDecoration(
            color: color.primary.withAlpha(300),
            //otra opcion es color.secondary
            borderRadius: BorderRadius.circular(20),

          ),
 
          child: Text(message.text),
        ),
         
       if (message.imageUrl != null ) 
          Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal:6),
          child: _ImageBubble(message),
        ),
      ],
    );
  }
}



class _ImageBubble extends StatelessWidget {
  const _ImageBubble(this.message);

  final Message message;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; 

    return ClipRRect(  
    borderRadius: BorderRadius.circular(25),
    child: Image.network(
      '${message.imageUrl}',      
      width: size.width * 0.6,
      height: 150,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
         return loadingProgress == null 
         ?  child
         :  Container(
          width: size.width * 0.6,
          height: 150,
          padding: const EdgeInsets.symmetric(horizontal: 1, vertical:5),
          child: const Text('  Tom está escribiendo...'),
         );
      }
      ),
    );
  }
}