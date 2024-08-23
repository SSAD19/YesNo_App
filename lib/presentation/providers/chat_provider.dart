import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{

  List<Message> messages = [
    const Message(text: 'Bienvenido al YesNo game, haz tu primera pregunta!', fromWho: FromWho.others)
  ];

  Future<void> sendMessage(String texto) async {
      if(texto.isEmpty) return; 
      
      final Message newMessage = Message(text: texto, fromWho: FromWho.me);
      messages.add(newMessage);

      if(texto.contains('?')){
      otherReply();
      }

      notifyListeners();
      moveScrollToButton();
  }

  clearMessage() {
    messages.clear(); 
    notifyListeners();
  }

  final ScrollController chatScroll = ScrollController(); 



  void moveScrollToButton() async {
    await Future.delayed(const Duration(milliseconds: 100));
    chatScroll.animateTo(
      chatScroll.position.maxScrollExtent, 
      duration:const Duration(milliseconds:300), 
      curve: Curves.easeOut);

  }

  final yesNo = YesNoAnswer();
  Future<void> otherReply() async {
    
    final Message otherMessage = await yesNo.getAnswer(); 
    messages.add(otherMessage);
    notifyListeners();

    moveScrollToButton();


  }


}