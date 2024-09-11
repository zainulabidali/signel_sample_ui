import 'package:flutter/material.dart';
import 'package:signal/main_page/calls/CallPage.dart';
import 'package:signal/main_page/chats/ChatsPage.dart';
import 'package:signal/main_page/chats/profile.dart';
import 'package:signal/main_page/chats/search.dart';
import 'package:signal/story/storymore.dart';

class Story extends StatefulWidget {
  const Story({super.key});

  @override
  State<Story> createState() => _StoryState();
}

class _StoryState extends State<Story> {
  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Signal"),
        leading: GestureDetector(
          child: CircleAvatar(
            backgroundImage: AssetImage(
                "assets/defile-hermes-homme-printemps-ete-2025-fashion-week-paris31-819x1024.webp"), // Add actual image
            radius: 10,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Profile(),
              ),
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Search(),
                ),
              );
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              storymore()
                  .showMenuPopup(context); // Call the showMenu from More class
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedIconTheme: IconThemeData(color: Colors.black),
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            if (index == 0) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Chatspage()));
            } else if (index == 1) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Callpage()));
            } else if (index == 2) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Story()));
            }
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_outlined),
            label: "Calls",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.amp_stories),
            label: "Stories",
          ),
        ],
      ),
      body: Column(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.camera_alt_outlined),
        backgroundColor: Colors.grey[300],
      ),
    );
  }
}
