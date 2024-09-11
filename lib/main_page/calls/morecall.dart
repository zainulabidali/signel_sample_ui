import 'package:flutter/material.dart';

class callmore {
  void showMenuPopup(BuildContext context) {
    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(50, 50, 0, 0), // Adjust position as needed
      items: [
        PopupMenuItem(child: Text("Clear call history")),
        PopupMenuItem(child: Text("Filtter missed calls")),
        PopupMenuItem(child: Text("Settings")),
        PopupMenuItem(child: Text("Notification Profile")),
      ],
    );
  }
}
