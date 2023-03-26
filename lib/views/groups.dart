import 'package:flutter/material.dart';
class grpview extends StatefulWidget {
  const grpview({Key? key}) : super(key: key);

  @override
  State<grpview> createState() => _grpviewState();
}

class _grpviewState extends State<grpview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:
      Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.width*0.5,
            width: MediaQuery.of(context).size.height*0.53,
            child: (
                Image(image: NetworkImage("https://pngimg.com/uploads/whatsapp/whatsapp_PNG1.png",
                ))
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.28,
            width: MediaQuery.of(context).size.width*0.75,
            alignment: Alignment.bottomRight,
            child: (
                Text("Introducing Communities", style: TextStyle(color: Colors.white ,fontSize: 25))
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.35,
            width: MediaQuery.of(context).size.width*0.99,
            alignment: Alignment.bottomRight,
            child: (
                Text("Easily Organized your related "
                    "groups and send announcement."
                    "Now Your Communities "
                    "Have Their Own Place", style: TextStyle(color: Colors.white ,fontSize: 15
                ))
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.43,
            width: MediaQuery.of(context).size.width*0.7,
            alignment: Alignment.bottomRight,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green[800],
              ),
              onPressed: (){

              },
              child: (
                  Text("Start Your Community", style: TextStyle(color: Colors.white ))
              ),
            ),
          ),
        ],
      ),
    );
  }
}
