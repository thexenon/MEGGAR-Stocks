import 'package:flutter/material.dart';
import '../components/button.dart';
import '../components/square_tile.dart';
import '../components/textfields.dart';
import 'login.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  // controllers
  final upfullnamecontroller = TextEditingController();
  final upusernamecontroller = TextEditingController();
  final upphonecontroller = TextEditingController();
  final uppasswordcontroller = TextEditingController();
  final upcpasswordcontroller = TextEditingController();
  bool obscureText = true;
  bool cobscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(

              // image: DecorationImage(image: AssetImage('back.png')),
              ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                //logo
                Image.asset(
                  'assets/logo.png',
                  width: 80,
                ),
                const SizedBox(
                  height: 20,
                ),

                //welcome back
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome back to Meggar Stocks',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),

                //fullname
                MyTextfields(
                  controller: upfullnamecontroller,
                  hintText: 'Fullname',
                  obscureText: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                //username
                MyTextfields(
                  controller: upusernamecontroller,
                  hintText: 'Email',
                  obscureText: false,
                ),
                const SizedBox(
                  height: 10,
                ),

                //password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    controller: uppasswordcontroller,
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                        child: Icon(obscureText
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      hintText: 'Password',
                    ),
                    obscureText: obscureText,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //confirm password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    controller: upcpasswordcontroller,
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            cobscureText = !cobscureText;
                          });
                        },
                        child: Icon(cobscureText
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      hintText: 'Confirm Password',
                    ),
                    obscureText: cobscureText,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 25,
                ),

                //sign in button
                MyButton(
                  btntext: 'Sign Up',
                  onTap: signUserUp(),
                ),
                const SizedBox(
                  height: 20,
                ),
                //not a member
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already a member?'),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            Login();
                          });
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

signUserUp() {}
