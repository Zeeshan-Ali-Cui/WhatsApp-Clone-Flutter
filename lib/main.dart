import 'package:flutter/material.dart';
import 'package:whatsappclone/views/Chatsview.dart';
import 'package:whatsappclone/views/Statusviews.dart';
import 'package:whatsappclone/views/callsview.dart';
import 'package:whatsappclone/views/groups.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(title: Text("WhatsApp",style: TextStyle(color: Colors.white38 ),),
          backgroundColor: Colors.blueGrey[900],
          actions: [
            IconButton(
              icon: Icon(Icons.camera_alt_outlined,
              color: Colors.grey),
                onPressed: () {}
            ),
            IconButton(
                icon: Icon(Icons.search,
                    color: Colors.grey),
                onPressed: () {}
            ),
            PopupMenuButton(
              // add icon, by default "3 dot" icon
                itemBuilder: (context){
                  return [
                    PopupMenuItem<int>(
                      // value: 0,

                      child: Text("Settings",style: TextStyle(color: Colors.grey ,fontSize: 20),),
                    ),
                  ];
                },
              offset: Offset(0, 0),
              color: Colors.blueGrey[900],
                // onSelected:(value){}
            ),

          ],
          bottom: TabBar(
              indicatorColor: Colors.green[700],
              tabs: [
            Tab(icon: Icon(Icons.groups,color: Colors.grey)),
            Tab(text: " CHATS",),
            Tab(text: "STATUS",),
            Tab(text: " CALLS",)
          ]),
        ),
          body:TabBarView(
            children: [
                grpview(),
                chatsview(),
                statusview(),
                callsview()
                ],
            ),
    )
    );
  }
}


