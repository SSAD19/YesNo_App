import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/screens/shared/message_field_box.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/other_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading:const Padding(
          padding: EdgeInsets.all(6),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://play-lh.googleusercontent.com/nm8pJogwxfH2Q0d4-2LaWtut385wdUAFWFW5Cava50NFhi8yzf96BDIMUhiyfQ_xDuw'),
          ),
        ),
        title: const Text('YesNo game'),
      ),
      body:_ChatView(),
    );
  }
}



class _ChatView extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {

   final chatProv = context.watch<ChatProvider>(); 
   

    return SafeArea(
      child: Column(
        children: [
            Expanded(
              child: ListView.builder(
                controller: chatProv.chatScroll ,
                //itemcount se coloca cuando sé la cantidad de elementos que tengo/quiero
                itemCount: chatProv.messages.length,
                itemBuilder:(context, index) {

                  final message = chatProv.messages[index];

                  return message.fromWho == FromWho.me
                  ?  MyMessageBubble(message: message.text,)
                  :  OtherMessageBubble(message: message,);
                  
                },),
            ),
            const SizedBox(height: 3,),
             MessageFieldBox(
              //onValue:(value) => chatProv.sendMessage(value)
              onValue: chatProv.sendMessage,),
             
            const SizedBox(height: 4,),

        ],
      ),
    );
  }
}