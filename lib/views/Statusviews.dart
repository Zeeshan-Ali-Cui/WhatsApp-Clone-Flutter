import 'package:flutter/material.dart';
class statusview extends StatefulWidget {
  const statusview({Key? key}) : super(key: key);

  @override
  State<statusview> createState() => _statusviewState();
}

class _statusviewState extends State<statusview> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body:
      Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.width*0.19,
            width: MediaQuery.of(context).size.height*0.07,
            child: CircleAvatar(

              child: (
                  Image(image: NetworkImage("https://cdn-icons-png.flaticon.com/128/236/236831.png",
                  ))
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.045,
            width: MediaQuery.of(context).size.width*0.37,
            alignment: Alignment.bottomRight,
            child: (
                Text("My Status", style: TextStyle(color: Colors.white ,fontSize: 20))
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.075,
            width: MediaQuery.of(context).size.width*0.43,
            alignment: Alignment.bottomRight,
            child: (
                Text("Tap to add status", style: TextStyle(color: Colors.grey ,fontSize: 15
                ))
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.13,
            width: MediaQuery.of(context).size.width*0.23,
            alignment: Alignment.bottomRight,
            child: (
                Text("Recent Update", style: TextStyle(color: Colors.white ,fontSize: 15
                ))
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.width*0.79,
            width: MediaQuery.of(context).size.height*0.07,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: (
                  Image(image: NetworkImage("https://cdn-icons-png.flaticon.com/128/5307/5307472.png",
                  ))
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.19,
            width: MediaQuery.of(context).size.width*0.44,
            alignment: Alignment.bottomRight,
            child: (
                Text("Friends Status", style: TextStyle(color: Colors.white ,fontSize: 20))
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.21,
            width: MediaQuery.of(context).size.width*0.39,
            alignment: Alignment.bottomRight,
            child: (
                Text("10 minutes ago", style: TextStyle(color: Colors.grey ,fontSize: 15
                ))
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.27,
            width: MediaQuery.of(context).size.width*0.23,
            alignment: Alignment.bottomRight,
            child: (
                Text("Viewed Update", style: TextStyle(color: Colors.white ,fontSize: 15
                ))
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.width*1.3,
            width: MediaQuery.of(context).size.height*0.07,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: (
                  Image(image: NetworkImage("https://cdn-icons-png.flaticon.com/128/428/428933.png",
                  ))
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.31,
            width: MediaQuery.of(context).size.width*0.44,
            alignment: Alignment.bottomRight,
            child: (
                Text("Friends Status", style: TextStyle(color: Colors.white ,fontSize: 20))
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.33,
            width: MediaQuery.of(context).size.width*0.39,
            alignment: Alignment.bottomRight,
            child: (
                Text("30 minutes ago", style: TextStyle(color: Colors.grey ,fontSize: 15
                ))
            ),
          ),
        ],
      ),
    );
  }
}
