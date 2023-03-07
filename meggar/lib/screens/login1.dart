import 'package:flutter/material.dart';
import 'package:meggar/components/button.dart';
import 'package:meggar/components/square_tile.dart';
import 'package:meggar/components/textfields.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  // controllers
  final usernamecontroller = TextEditingController();
  final passwordnamecontroller = TextEditingController();
  bool _obscureText = true;

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
                  height: 40,
                ),
                //logo
                Image.asset('assets/logo.png', width: 100,),
                const SizedBox(
                  height: 40,
                ),
        
                //welcome back
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Welcome back to Meggar Stocks',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
        
                //username
                MyTextfields(
                  controller: usernamecontroller,
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
                    controller: passwordnamecontroller,
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: (){
                          // setState((){                            
                          // _obscureText = !_obscureText;
                          // });
                        },
                        child: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: 'Password',
                    ),
                    obscureText: _obscureText,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
        
                //forgot password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
        
                //sign in button
                MyButton(
                  onTap: signUserIn(),
                ),
                const SizedBox(
                  height: 40,
                ),
        
                //continue with
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(child: Divider(
                        thickness: 2,
                        color: Colors.white,
                      )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text('Continue With'),
                      ),
                      Expanded(child: Divider(
                        thickness: 2,
                        color: Colors.white,
                      )),
                    ],
                  ),
                ),
        
                //google + apple
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(imagePath: 'assets/apple.jpeg'),
                    const SizedBox(width: 20,),
                    SquareTile(imagePath: 'assets/google.png'),
                    const SizedBox(width: 20,),
                  ],
                ),
                const SizedBox(height: 40,),
        
                //not a member
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a member?'),
                    const SizedBox(width: 4 ,),
                    Text('Register Now', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold,),),
                  ],
                ),
                const SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

signUserIn() {}
