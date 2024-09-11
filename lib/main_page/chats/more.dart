import 'package:flutter/material.dart';

class More {
  void showMenuPopup(BuildContext context) {
    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(50, 50, 0, 0), // Adjust position as needed
      items: [
        PopupMenuItem(child: Text("New group")),
        PopupMenuItem(child: Text("Mark all read")),
        PopupMenuItem(child: Text("Invite friends")),
        PopupMenuItem(child: Text("Filled unread chats")),
        PopupMenuItem(child: Text("Settings")),
        PopupMenuItem(child: Text("Notification")),
      ],
    );
  }
}
