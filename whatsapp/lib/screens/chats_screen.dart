import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sampleproject/screens/chatroom_screen.dart';

class ChatScreen extends StatelessWidget {
  final DateTime now = DateTime.now();
  final DateFormat formatter = DateFormat('yyyy-MM-dd');

  ChatScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) => ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ChatroomScreen(),
            ));
          },
          leading:const CircleAvatar(
            radius: 20.0,
            backgroundImage: NetworkImage(
                'https://blogger.googleusercontent.com/img/a/AVvXsEhXJ1lfuk2J1uTzEQ0mEsevS-j9NPaoh3MpWS2jwCfAFGtBI2dyq-glTwkWt_nUCPNsrSsg_BaEVWTysFDG4wzINj9ibAIKMPE5aJT8bXV7KrlysimjX0zy4XeQakYap3mx520j1_by85d3wACAUEpj_0gKZbaUB5tOGZCG8sBrB7mVLEqtSN3rnRO5=s892'),
            backgroundColor: Colors.transparent,
          ),

          //''),

          trailing: Text(formatter.format(now)),
          title:const Text('Rajib Talukder'),
          subtitle:const Text('Here is my text will be show'),
        ),
      ),
    );
  }
  
}
