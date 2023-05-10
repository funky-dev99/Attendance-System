import 'package:attendance_system/pages/leave.dart';
import 'package:attendance_system/pages/qr_code.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
        leading: IconButton(
          icon: Image.asset("images/home.png"),
          onPressed: () {
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
        elevation: 0.0,
      ),
      body: Column(
        children: [const SizedBox(height: 30,),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: (){Navigator.push(
                      context, MaterialPageRoute(builder: (context) => QRViewExample()));},
                  child: Image.asset('images/qr.png'),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: (){Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Leave()));},
                  child: Image.asset('images/leave.png'),
                ),
              ),
            ],
          ),
        ],
      )

    );
  }
}
