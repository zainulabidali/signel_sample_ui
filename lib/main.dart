import 'package:flutter/material.dart';
import 'package:signal/main_page/chats/ChatsPage.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  // Initialize Hive
  await Hive.initFlutter();

  // Open a Hive box
  await Hive.openBox('contacts');

  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Chatspage(),
    );
  }
}
