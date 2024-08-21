import 'package:flutter/material.dart';

class OtherMessageBubble extends StatelessWidget {
  const OtherMessageBubble({super.key});

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
          //TODO: gif
          child: const Text('Consequat ad anim occaecat est enim veniam anim duis est in nostrud dolor do reprehenderit.'),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 4, horizontal:6),
          child: _ImageBubble(),
        ),
      ],
    );
  }
}



class _ImageBubble extends StatelessWidget {
  const _ImageBubble();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; 

    return ClipRRect(  
    borderRadius: BorderRadius.circular(25),
    child: Image.network(
      'https://yesno.wtf/assets/no/28-e19b6f658f621f7c5980a33f8249a65d.gif',
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