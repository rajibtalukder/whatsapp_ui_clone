import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);
  Widget _buildCallDetails() {
    return ListTile(
      onTap: () {},
      leading: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.teal, width: 2),
          borderRadius: BorderRadius.circular(50),
        ),
        // ignore: prefer_const_constructors
        child: const Padding(
          padding: EdgeInsets.all(2.0),
          child: CircleAvatar(
            radius: 20.0,
            backgroundImage: NetworkImage(
                'https://blogger.googleusercontent.com/img/a/AVvXsEhXJ1lfuk2J1uTzEQ0mEsevS-j9NPaoh3MpWS2jwCfAFGtBI2dyq-glTwkWt_nUCPNsrSsg_BaEVWTysFDG4wzINj9ibAIKMPE5aJT8bXV7KrlysimjX0zy4XeQakYap3mx520j1_by85d3wACAUEpj_0gKZbaUB5tOGZCG8sBrB7mVLEqtSN3rnRO5=s892'),
            backgroundColor: Colors.transparent,
          ),
        ),
      ),
      // trailing:
      //     const Icon(Icons.call, color: Color.fromARGB(255, 18, 140, 126)),
      title: const Text('Rajib Talukder'),
      subtitle: Row(
        children: const [
          Text('Yesterday,'),
          SizedBox(width: 10),
          Text('11:28 PM')
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
              leading: Stack(children: const [
                CircleAvatar(
                  radius: 20.0,
                  backgroundImage: NetworkImage(
                      'https://blogger.googleusercontent.com/img/a/AVvXsEhXJ1lfuk2J1uTzEQ0mEsevS-j9NPaoh3MpWS2jwCfAFGtBI2dyq-glTwkWt_nUCPNsrSsg_BaEVWTysFDG4wzINj9ibAIKMPE5aJT8bXV7KrlysimjX0zy4XeQakYap3mx520j1_by85d3wACAUEpj_0gKZbaUB5tOGZCG8sBrB7mVLEqtSN3rnRO5=s892'),
                  backgroundColor: Colors.transparent,
                ),
                Positioned(
                    top: 20,
                    left: 20,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Color.fromARGB(255, 18, 140, 126),
                      child: Icon(Icons.add),
                    ))
              ]),
              // trailing: const Icon(Icons.call,
              //     color: Color.fromARGB(255, 18, 140, 126)),
              title: const Text('My status'),
              subtitle: const Text('Tap to add status update'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Text('Resent updates',
                  style: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.w500)),
            ),
            for (int i = 0; i < 4; i++) _buildCallDetails(),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Text('Viewed updates',
                  style: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.w500)),
            ),
            for (int i = 0; i < 2; i++) _buildCallDetails(),
          ],
        ),
      ),
    );
  }
}
