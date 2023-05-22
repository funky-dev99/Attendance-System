import 'package:attendance_system/pages/leave.dart';
import 'package:attendance_system/pages/qr_code.dart';
import 'package:flutter/material.dart';

import '../Methods/methods.dart';
import 'login.dart';

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
        actions: [
          IconButton(
            icon: Icon(Icons.logout,color: Colors.black,), // Use the logout icon from the Icons class
            tooltip: 'Logout',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
        ],

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
                      context, MaterialPageRoute(builder: (context) => LeavePage()));},
                  child: Image.asset('images/leave.png'),
                ),
              ),
            ],
          ),

          SizedBox(height: getSizeBoxHeight(context),),

          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (context) => ClaimPage()));
                  },
                  child: Image.asset('images/claimapp.png'),
                ),
              ),

              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (context) => PaySlipPage()));

                  },
                  child: Image.asset('images/payslip.png'),
                ),
              ),



            ],
          ),

          SizedBox(height: getSizeBoxHeight(context),),

          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (context) => AskPage()));
                  },
                  child: Image.asset('images/inqu.png'),
                ),
              ),

              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (context) => Settings()));
                  },
                  child: Image.asset('images/set.png'),
                ),
              ),



            ],
          ),

        ],
      )

    );
  }
}
