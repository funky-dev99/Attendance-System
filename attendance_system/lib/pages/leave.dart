import 'package:flutter/material.dart';

import 'home_page.dart';

class Leave extends StatelessWidget {
  const Leave({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
        "Leave Approval",
        style: TextStyle(color: Colors.black, fontSize: 22),
    ),
          leading: IconButton(
            icon: Image.asset("images/back.png"),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          elevation: 0.0,
        ),
    );
  }
}