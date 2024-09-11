import 'package:flutter/material.dart';
import 'package:signal/main_page/calls/CallPage.dart';
import 'package:signal/main_page/chats/camerabutton.dart';
import 'package:signal/main_page/chats/edit_button.dart';
import 'package:signal/main_page/chats/message.dart';
import 'package:signal/main_page/chats/more.dart';
import 'package:signal/main_page/chats/profile.dart';
import 'package:signal/main_page/chats/search.dart';

import 'package:signal/story/story.dart';

class Chatspage extends StatefulWidget {
  Chatspage({super.key});

  @override
  _ChatspageState createState() => _ChatspageState();
}

class _ChatspageState extends State<Chatspage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Signal"),
          leadingWidth: 30,
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Profile(),
                ),
              );
            },
            child: CircleAvatar(
              backgroundImage: AssetImage(
                  "assets/defile-hermes-homme-printemps-ete-2025-fashion-week-paris31-819x1024.webp"),
              radius: 10,
            ),
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
                More().showMenuPopup(context);
              },
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: GestureDetector(
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/defile-hermes-homme-printemps-ete-2025-fashion-week-paris31-819x1024.webp"),
                ),
                title: Text("Muhammed Zainul"),
                subtitle: Text("Outgoing video call "),
                trailing: Icon(Icons.videocam_outlined),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Message()));
                },
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/defile-hermes-homme-printemps-ete-2025-fashion-week-paris31-819x1024.webp"),
                ),
                title: Text("Muhammed Zainul"),
                subtitle: Text("Outgoing video call "),
                trailing: Icon(Icons.add_reaction_outlined),
                onTap: () {},
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/defile-hermes-homme-printemps-ete-2025-fashion-week-paris31-819x1024.webp"),
                ),
                title: Text("Muhammed Zainul"),
                subtitle: Text("Outgoing video call "),
                trailing: Icon(Icons.videocam_outlined),
                onTap: () {},
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/defile-hermes-homme-printemps-ete-2025-fashion-week-paris31-819x1024.webp"),
                ),
                title: Text("Muhammed Zainul"),
                subtitle: Text("Outgoing video call "),
                trailing: Icon(Icons.add_alert_outlined),
                onTap: () {},
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/defile-hermes-homme-printemps-ete-2025-fashion-week-paris31-819x1024.webp"),
                ),
                title: Text("Muhammed Zainul"),
                subtitle: Text("Outgoing video call "),
                trailing: Icon(Icons.call_missed_sharp),
                onTap: () {},
              ),
            ],
          ),
        ),
        // Can expand based on the current tab
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Callpage()));
              } else if (index == 2) {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Story()));
              }
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble),
              label: "Chats",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call_outlined),
              label: "Calls",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.amp_stories_outlined),
              label: "Stories",
            ),
          ],
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Camerabutton()));
              },
              child: Icon(Icons.camera_alt_outlined),
              backgroundColor: Colors.grey[300],
            ),
            SizedBox(
              height: 20,
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => editbutton()));
              },
              child: Icon(Icons.edit_outlined),
              backgroundColor: Colors.grey[300],
            ),
          ],
        ),
      ),
    );
  }
}
