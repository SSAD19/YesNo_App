import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {

  final ValueChanged<String> onValue;
  const MessageFieldBox({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {

    final textController = TextEditingController();
    final focusNode = FocusNode();
    
    final boxBorder = UnderlineInputBorder(
      borderSide: const BorderSide( color: Colors.transparent,),
      borderRadius: BorderRadius.circular(25),);

    return TextFormField(
        controller: textController,
        focusNode: focusNode,
        decoration: InputDecoration(
          hintText: 'Termina tu mensaje con "?" ',

          enabledBorder: boxBorder,
          focusedBorder: boxBorder,
          filled: true,
          suffixIcon: IconButton(
            icon: const Icon( Icons.send_outlined),
            onPressed: (){
              final textValue = textController.value.text;
              onValue(textValue); 
              textController.clear();
              focusNode.requestFocus();
            },
            ),
        ),
        onFieldSubmitted: (value) {
          onValue(value);
          textController.clear();
          focusNode.requestFocus();
        },
       // onChanged: (value) => 
        onTapOutside: (event) => focusNode.unfocus(),
        );
  }
}