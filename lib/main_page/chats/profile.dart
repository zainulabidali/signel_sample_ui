import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                        "assets/defile-hermes-homme-printemps-ete-2025-fashion-week-paris31-819x1024.webp"), // Add a valid asset path
                    radius: 50,
                  ),
                  title: Text("Zyn abi"),
                  subtitle: Text("+91 9207846064"),
                  onTap: () {},
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: Icon(Icons.account_circle_outlined),
                  title: Text("Account"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.devices),
                  title: Text("Linked devices"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.favorite_border),
                  title: Text("Donate to Signel"),
                  onTap: () {},
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.brightness_6_outlined),
                  title: Text("Appearence"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.chat_outlined),
                  title: Text("Chats"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.adjust_outlined),
                  title: Text("Stories"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.notifications_none),
                  title: Text("Notifications"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.lock_open_sharp),
                  title: Text("Privacy"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.store_mall_directory),
                  title: Text("Data and storage"),
                  onTap: () {},
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.payment),
                  title: Text("Payments"),
                  onTap: () {},
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.help_outline),
                  title: Text("Help"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.email_outlined),
                  title: Text("Invite your friends"),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
