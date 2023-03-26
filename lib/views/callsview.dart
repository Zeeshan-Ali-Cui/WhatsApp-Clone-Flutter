import 'package:flutter/material.dart';
class callsview extends StatefulWidget {
  const callsview({Key? key}) : super(key: key);

  @override
  State<callsview> createState() => _callsviewState();
}

class _callsviewState extends State<callsview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.width*0.19,
            width: MediaQuery.of(context).size.height*0.07,
            child: CircleAvatar(
              backgroundColor: Colors.lightGreen,
              child: (
                  Image(image: NetworkImage("https://cdn-icons-png.flaticon.com/128/7347/7347136.png",
                  ))
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.045,
            width: MediaQuery.of(context).size.width*0.47,
            alignment: Alignment.bottomRight,
            child: (
                Text("Create Call Links", style: TextStyle(color: Colors.white ,fontSize: 18))
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.071,
            width: MediaQuery.of(context).size.width*0.69,
            alignment: Alignment.bottomRight,
            child: (
                Text("Share a link for your Whatsapp Call", style: TextStyle(color: Colors.grey ,fontSize: 15
                ))
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.4,
            width: MediaQuery.of(context).size.width*0.9,
            alignment: Alignment.bottomRight,
            child: (
                Text("To start calling contacts who "
                    "have WhatsApp, tap on screen", style: TextStyle(color: Colors.grey ,fontSize: 15
                ))
            ),
          ),
        ],
      ),
    );
  }
}
