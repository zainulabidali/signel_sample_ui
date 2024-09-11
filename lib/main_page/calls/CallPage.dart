import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:signal/main_page/calls/call_button.dart';
import 'package:signal/main_page/calls/morecall.dart';
import 'package:signal/main_page/chats/ChatsPage.dart';
import 'package:signal/main_page/chats/profile.dart';
import 'package:signal/main_page/chats/search.dart';
import 'package:signal/story/story.dart'; // Import the Contact model

class Callpage extends StatefulWidget {
  const Callpage({super.key});

  @override
  State<Callpage> createState() => _CallpageState();
}

class _CallpageState extends State<Callpage> {
  int _currentIndex = 1;

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
              callmore().showMenuPopup(context);
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
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
            icon: Icon(Icons.call),
            label: "Calls",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.amp_stories_outlined),
            label: "Stories",
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: Hive.box('contacts').listenable(),
        builder: (context, Box box, widget) {
          if (box.isEmpty) {
            return Center(
              child: Text(
                'No contact added.',
                style: TextStyle(fontSize: 20),
              ),
            );
          } else {
            return ListView.builder(
              itemCount: box.length,
              itemBuilder: (context, index) {
                final contact = box.getAt(index);
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[300],
                  ),
                  title: Text(contact["name"]),
                  subtitle: Text(contact["phoneNumber"]),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Navigate to CallButton
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CallButton()),
          );
        },
        child: Icon(Icons.add_ic_call_outlined),
        backgroundColor: Colors.grey[300],
      ),
    );
  }
}
