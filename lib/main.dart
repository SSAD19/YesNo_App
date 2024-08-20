import 'package:flutter/material.dart';

import 'config/theme/custm_app_theme.dart';
import 'presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes No App',
      debugShowCheckedModeBanner: false,
      theme: CustomAppTheme(selectedColor: 4).theme(),
      home:const ChatScreen(),
      );
  }
}