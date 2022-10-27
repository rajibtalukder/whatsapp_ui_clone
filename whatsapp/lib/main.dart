import 'package:flutter/material.dart';
import 'package:sampleproject/screens/camera_screen.dart';
import 'package:sampleproject/screens/chats_screen.dart';
import 'package:sampleproject/screens/settings_screen.dart';
import 'package:sampleproject/screens/status_screen.dart';
import 'package:sampleproject/screens/call_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("WhatsApp"),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              PopupMenuButton(
                  // onSelected: (selected) {
                  //   if(selected==5){
                  //     Navigator.push(context, MaterialPageRoute(builder: ((_) => SettingsPage())));
                  //   }else{

                  //   }
                  // },
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  iconSize: 28,
                  itemBuilder: (context) => [
                        const PopupMenuItem(
                          value: 1,
                          child: Text(
                            'New Group',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 17),
                          ),
                        ),
                        const PopupMenuItem(
                          value: 2,
                          child: Text(
                            'New broadcast',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 17),
                          ),
                        ),
                        const PopupMenuItem(
                          value: 3,
                          child: Text(
                            'Linked devices',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 17),
                          ),
                        ),
                        const PopupMenuItem(
                          value: 4,
                          child: Text(
                            'Starred messsage',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 17),
                          ),
                        ),
                        const PopupMenuItem(
                          value: 5,
                          child: Text(
                            'Settings',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 17),
                          ),
                        )
                      ])
            ],
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              tabs: [
                const SizedBox(
                  width: 15,
                  child: InkWell(
                    child: Tab(
                      icon: Icon(
                        Icons.camera_alt,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 75,
                  child: Row(
                    children: [
                      const Tab(
                        text: "CHATS",
                      ),
                      const SizedBox(width: 5),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text('10',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 18, 140, 126))),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 75,
                  child: Row(
                    children: const [
                      Tab(
                        text: "STATUS",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 75,
                  child: Row(
                    children: const [
                      Tab(
                        text: "CALLS",
                      ),
                    ],
                  ),
                ),
              ],
            ),
            backgroundColor: const Color.fromARGB(255, 18, 140, 126),
          ),
          body: TabBarView(
            children: [
              CameraScreen(),
              ChatScreen(),
              const StatusScreen(),
              CallScreen(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: const Color.fromARGB(255, 18, 140, 126),
            onPressed: () {},
            child: const Icon(Icons.message),
          ),
        ),
      ),
      // initialRoute: "/",
      // routes: {
      //   "/":(context) => MyApp(),
      //   "setting":(context) => SettingsPage()
      // },
    );
  }
}
