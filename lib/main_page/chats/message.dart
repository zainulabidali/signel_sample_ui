import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40,
        leading: CircleAvatar(
          backgroundColor: Colors.amber[300],
        ),
        title: Text("Muhammed zainul"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.videocam_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.amber[300],
                radius: 30,
              ),
              Text(
                " Muhammed Zainul >",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: 200,
                alignment:
                    Alignment.center, // Centers the text inside the container
                child: Text(
                    " +91 9207846064 "), // Text displayed inside the container
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      10), // Rounded corners with a radius of 10
                  border: Border.all(
                    color: const Color.fromARGB(
                        255, 196, 190, 190), // Light gray border color
                    width: 1, // Border width
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
