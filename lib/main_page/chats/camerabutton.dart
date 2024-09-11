import 'package:flutter/material.dart';

class Camerabutton extends StatelessWidget {
  const Camerabutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset("assets/photo_2024-09-07_08-16-33.jpg",fit: BoxFit.fill,),
      
    );
  }
}
