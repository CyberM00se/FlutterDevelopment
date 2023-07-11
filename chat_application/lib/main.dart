import 'package:chat_application/config/theme.dart';
import 'package:chat_application/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Chat App UI',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      home: const HomeScreen(),
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/chat', page: () => const ChatScreen())
      ],
    );
  }
}
