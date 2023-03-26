import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsappclone/model/msgmodel.dart';
class chatui extends StatefulWidget {
  const chatui({Key? key}) : super(key: key);

  @override
  State<chatui> createState() => _chatuiState();
}
List<msgm> messages = [
  msgm("Ni Hao", "sender"),
  msgm("Ni Hao", "receiver"),
  msgm("Ni Hao ma?", "sender"),
  msgm( "Wo hen hao. Ni Ne?",  "receiver"),
  msgm("Wo ye hen hao.", "sender"),
  msgm("Ni Baba Mama hao ma?", "receiver"),
  msgm("tamen hen hao. Ni gege ne?", "sender"),
  msgm("ta hen hao", "receiver"),
];
class _chatuiState extends State<chatui> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor:  Colors.blueGrey[900],
    ));
    return Scaffold(
      backgroundColor: Colors.black,
      body:
      Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 35),
            color: Colors.blueGrey[900],
            child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                  Container(
                    margin: EdgeInsets.only(left: 0, right: 3.0),
                    child: (
                        IconButton(
                          icon: const Icon(Icons.arrow_back),
                          color: Colors.white,
                          onPressed: () {},
                        )
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                    child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: (
                    Image.asset("assets/images/428933.png"))
                    ),
                  ),
              Container(
                margin: EdgeInsets.only(right: 65.0),
                child: (
                    Text("Zeeshan Ali",style: TextStyle(color: Colors.white ,fontSize: 20))
                ),
              ),
              Container(
                // margin: EdgeInsets.only(right: 20.0),
                child: (
                    IconButton(
                      icon: const Icon(Icons.video_camera_back),
                      color: Colors.white,
                      onPressed: () {},
                    )
                ),
              ),
              Container(
                // margin: EdgeInsets.only(right: 5.0),
                child: (
                    IconButton(
                      icon: const Icon(Icons.call),
                      color: Colors.white,
                      onPressed: () {},
                    )
                ),
              ),
              Container(
                child: (
                    IconButton(
                      icon: const Icon(Icons.list_outlined),
                      color: Colors.white,
                      onPressed: () {},
                    )
                ),
              ),
            ],
            ),

          ),
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 5),
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index){
                  return Container(
                    padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
                    child: Align(
                      alignment: (messages[index].messageType == "receiver"?Alignment.topLeft:Alignment.topRight),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: (messages[index].messageType  == "receiver"?Colors.grey[400]:Colors.green[200]),
                        ),
                        padding: EdgeInsets.all(16),
                        child: Text(messages[index].messageContent!, style: TextStyle(fontSize: 15),),
                      ),
                    ),
                  );
                },
              ),
            ),
          Container(
            child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor:  Colors.blueGrey[900],
                    prefixIcon: Icon(Icons.emoji_emotions_outlined, color: Colors.white,),
                    labelText: "Message",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide( color: Colors.blueGrey[900]!),
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    suffixIcon: Icon(Icons.send,color: Colors.white,)
                )
            ),
          )
        ],
      ),
    );
  }
}
