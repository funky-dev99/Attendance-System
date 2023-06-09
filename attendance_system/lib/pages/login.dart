import 'package:attendance_system/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final passwordController = TextEditingController();
  bool passwordValidate = false;
  bool incorrectPassword = false;

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  void _navigateToHome() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

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
                Image.asset('images/pin.png'),

                const SizedBox(
                  height: 50,
                ),

                //Welcome Back Text
                const Text(
                  'Welcome!!',
                  style: TextStyle(color: Colors.black87, fontSize: 25,
                  fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    textInputAction: TextInputAction.done,
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: 'Pin Code',
                      errorText:
                          passwordValidate ? 'Value Can\'t Be Empty' : null,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 50,
                ),

                MaterialButton(
                  onPressed: () {
                    setState(() {
                      passwordController.text.isEmpty
                          ? passwordValidate = true
                          : passwordValidate = false;
                    });
                    if (!passwordValidate &&
                        passwordController.text == '1234') {
                      _navigateToHome(); // Navigate to the home page
                    } else {
                      setState(() {
                        incorrectPassword = true;
                      });
                    }
                  },
                  minWidth: 150.0,
                  height: 50.0,
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text(
                    'Get Start',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                SizedBox(height: 10),

                if (incorrectPassword)
                  const Text(
                    'Incorrect password. Please try again.',
                    style: TextStyle(color: Colors.red),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
