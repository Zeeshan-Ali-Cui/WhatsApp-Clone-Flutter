import 'package:flutter/material.dart';
import 'package:whatsappclone/model/chatmodel.dart';
import 'package:whatsappclone/views/chatsui.dart';
class chatsview extends StatefulWidget {
  const chatsview({Key? key}) : super(key: key);

  @override
  State<chatsview> createState() => _chatsviewState();
}
class _chatsviewState extends State<chatsview> {

  List<chatm> chat = [
    chatm("Zeeshan", "assets/images/428933.png"),
    chatm("Ali", "assets/images/428933.png"),
    chatm("Asim", "assets/images/428933.png"),
    chatm("Umer", "assets/images/428933.png"),
    chatm("Sami", "assets/images/428933.png"),
    chatm("Zia", "assets/images/428933.png"),
    chatm("Azib", "assets/images/428933.png"),
    chatm("Abdullah", "assets/images/428933.png"),
    chatm("Haider", "assets/images/428933.png"),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:
      ListView.builder(
          itemCount: chat.length,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, i) {
            return
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: (
                               Image.asset(chat[i].image!)
                              )
                          ),
                        ),
                      Container(
                        margin: EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: (
                                  Text(chat[i].name!, style: TextStyle(color: Colors.white ,fontSize: 20))
                              ),
                            ),
                            Container(
                              child: (
                                  Text("Chat Loading....", style: TextStyle(color: Colors.grey ,fontSize: 15
                                  ))
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const chatui()),
                  );
                },
              );
          }),
    );
  }
}
