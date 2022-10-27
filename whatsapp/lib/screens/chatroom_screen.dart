import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChatroomScreen extends StatelessWidget {
  bool sentAndMicIcon = false;

  ChatroomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 18, 140, 126),
          // leading: CircleAvatar(
          //     radius: 20.0,
          //     backgroundImage: NetworkImage(
          //         'https://blogger.googleusercontent.com/img/a/AVvXsEhXJ1lfuk2J1uTzEQ0mEsevS-j9NPaoh3MpWS2jwCfAFGtBI2dyq-glTwkWt_nUCPNsrSsg_BaEVWTysFDG4wzINj9ibAIKMPE5aJT8bXV7KrlysimjX0zy4XeQakYap3mx520j1_by85d3wACAUEpj_0gKZbaUB5tOGZCG8sBrB7mVLEqtSN3rnRO5=s892'),
          //     backgroundColor: Colors.transparent,
          //   ),
          leadingWidth: width / 4.5,
          leading: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back)),
                const CircleAvatar(
                  radius: 20.0,
                  backgroundImage: NetworkImage(
                      'https://blogger.googleusercontent.com/img/a/AVvXsEhXJ1lfuk2J1uTzEQ0mEsevS-j9NPaoh3MpWS2jwCfAFGtBI2dyq-glTwkWt_nUCPNsrSsg_BaEVWTysFDG4wzINj9ibAIKMPE5aJT8bXV7KrlysimjX0zy4XeQakYap3mx520j1_by85d3wACAUEpj_0gKZbaUB5tOGZCG8sBrB7mVLEqtSN3rnRO5=s892'),
                  backgroundColor: Colors.transparent,
                ),
              ],
            ),
          ),
          title: const Text('Rajib Talukder'),
          //centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.video_call)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                  flex: 8,
                  child: Column(
                      // Message will be provide here...
                      // chating area
                      // this is the chatbox
                      )),
              Expanded(
                child: Row(
                  children: [
                    SizedBox(
                      height: height / 15,
                      width: width / 1.3,
                      child: TextField(
                          
                          obscureText: true,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            hintText: "Message",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          )),
                    ),
                    const SizedBox(width: 10),
                    CircleAvatar(
                        radius: 25,
                        backgroundColor: const Color.fromARGB(255, 18, 140, 126),
                        child: sentAndMicIcon
                            ? const Icon(Icons.send, color: Colors.white)
                            : const Icon(Icons.mic, color: Colors.white))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
