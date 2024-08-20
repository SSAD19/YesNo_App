import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading:const Padding(
          padding: EdgeInsets.all(6),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://images.mubicdn.net/images/cast_member/282705/cache-397104-1544788154/image-w856.jpg'),
          ),
        ),
        title: const Text('Tom, amorcito'),
      ),
      body:_ChatView(),
    );
  }
}





class _ChatView extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
            Expanded(
              child: ListView.builder(
                //itemcount se coloca cuando sé la cantidad de elementos que tengo/quiero
                itemCount: 16,
                itemBuilder:(context, index) {
                  return const MyMessageBubble();
                  
                },),
            ),
        ],
      ),
    );
  }
}