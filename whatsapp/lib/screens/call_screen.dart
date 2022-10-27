import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CallScreen extends StatelessWidget {
  final DateTime now = DateTime.now();
  final DateFormat formatter = DateFormat('dd-MM-yyyy');

  CallScreen({Key? key}) : super(key: key);

  Widget _buildCallDetails() {
    return ListTile(
      onTap: () {},
      leading: const CircleAvatar(
        radius: 20.0,
        backgroundImage: NetworkImage(
            'https://blogger.googleusercontent.com/img/a/AVvXsEhXJ1lfuk2J1uTzEQ0mEsevS-j9NPaoh3MpWS2jwCfAFGtBI2dyq-glTwkWt_nUCPNsrSsg_BaEVWTysFDG4wzINj9ibAIKMPE5aJT8bXV7KrlysimjX0zy4XeQakYap3mx520j1_by85d3wACAUEpj_0gKZbaUB5tOGZCG8sBrB7mVLEqtSN3rnRO5=s892'),
        backgroundColor: Colors.transparent,
      ),
      trailing:
          const Icon(Icons.call, color: Color.fromARGB(255, 18, 140, 126)),
      title: const Text('Rajib Talukder'),
      subtitle: Row(
        children: [
          const Icon(Icons.call_made, size: 15, color: Colors.teal),
          const SizedBox(width: 10),
          Text(formatter.format(now)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              onTap: () {},
              leading: const CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 18, 140, 126),
                  child: Icon(Icons.add_link_sharp)),
              // trailing: const Icon(Icons.call,
              //     color: Color.fromARGB(255, 18, 140, 126)),
              title: const Text('Create call link'),
              subtitle: const Text('Share a link for you WhatsApp call'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Text('Resent',
                  style: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.w500)),
            ),
            for (int i = 0; i < 14; i++) _buildCallDetails(),
          ],
        ),
      ),
      //floatingActionButton: FloatingActionButton(onPressed: (){}, child:Icon(Icons.add_ic_call)),
    );
  }
}
