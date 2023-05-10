import 'package:attendance_system/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatelessWidget {
   LoginPage({Key key}) : super(key: key);

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void userSignIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                //Logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                const SizedBox(
                  height: 50,
                ),

                //Welcome Back Text
                const Text(
                  'Welcome back, You\'ve been missed!!',
                  style: TextStyle(color: Colors.black87, fontSize: 18),
                ),
                const SizedBox(
                  height: 25,
                ),

                //Username Text field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(

                    controller: usernameController,
                    decoration:  InputDecoration(

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(color: Colors.blueGrey,),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(color: Colors.black45),
                        ),
                        fillColor: Colors.white30,
                        filled: true,
                        hintText: '   User Name',
                        helperStyle: TextStyle(color: Colors.black45)),
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),

                //Password Text field
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration:  InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(color: Colors.blueGrey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(color: Colors.black45),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: '  Password',
                        helperStyle: TextStyle(color: Colors.black45)),
                  ),
                ),

                //Forgot?
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Fogot Password?',
                        style: TextStyle(color: Colors.black87, fontSize: 16),
                      ),
                    ],
                  ),
                ),

                //Sign in Button
                SizedBox(
                  height: 15,
                ),



                GestureDetector(
                  onTap: (){Navigator.push(
                      context, MaterialPageRoute(builder: (context) => HomePage()));},
                  child: Container(
                    padding: EdgeInsets.all(25),
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),

                //or continue

                Divider(),

                //Google+Apple buttons

                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    margin: EdgeInsets.only(left: 30, bottom: 30, right: 30),
                    child: Image.asset('images/gs.png')),

                //Register Now

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(color: Colors.black87, fontSize: 16),
                    ),
                    Text(
                      'Register Now!!',
                      style: TextStyle(color: Colors.blue, fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
