import 'package:flutter/material.dart';

class editbutton extends StatelessWidget {
  const editbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          title: Text(
            "New message",
            style: TextStyle(color: Colors.black),
          ),
          trailing: Icon(Icons.more_vert),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "   Search name or number",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none),
                filled: true,
                fillColor: Colors.grey[300],
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: Icon(Icons.group_add_outlined),
            ),
            title: Text("  New group"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: Icon(Icons.data_usage_rounded),
            ),
            title: Text("  Find username"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: Icon(Icons.add_ic_call_outlined),
            ),
            title: Text("  Find by phone number"),
          ),
        ],
      ),
    );
  }
}
