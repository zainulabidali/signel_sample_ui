import 'package:flutter/material.dart';

class storymore {
  void showMenuPopup(BuildContext context) {
    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(50, 50, 0, 0), // Adjust position as needed
      items: [
        PopupMenuItem(child: Text("Story Privacy    ")),
        
      ],
    );
  }
}
