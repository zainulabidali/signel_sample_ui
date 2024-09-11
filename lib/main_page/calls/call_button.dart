import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class CallButton extends StatefulWidget {
  @override
  _CallButtonState createState() => _CallButtonState();
}

class _CallButtonState extends State<CallButton> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Contact"),
        actions: [
          IconButton(
            onPressed: () async {
              // Save contact to Hive
              final contactBox = Hive.box('contacts');
              final newContact = {
                "name": _nameController.text,
                "phoneNumber": _phoneController.text,
              };
              await contactBox.add(newContact);

              Navigator.pop(context, {
                'name': _nameController.text,
                'phone': _phoneController.text,
              });
            },
            icon: Icon(Icons.add_task_outlined),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: _phoneController,
              maxLength: 10,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Add number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.grey[300],
                filled: true,
              ),
            ),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: "Enter the name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.grey[300],
                filled: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
