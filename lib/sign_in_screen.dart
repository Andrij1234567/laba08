import 'package:flutter/material.dart';
import 'package:lab08/sign_up_screen.dart';
import 'package:lab08/reset_password_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log in', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterLogo(size: 80.0),
                SizedBox(height: 20.0),


                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) return 'Please enter login';
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    labelText: 'Login:',
                  ),
                ),

                SizedBox(height: 10.0),


                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) return 'Please enter password';
                    if (value.length < 7) return 'Password must be at least 7 characters long';
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    labelText: 'Password:',
                  ),
                  obscureText: true,
                ),

                SizedBox(height: 20.0),


                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext ctx) {
                          return const AlertDialog(
                            title: Text('Message'),
                            content: Text("Need to implement"),
                          );
                        },
                      );
                    },
                    child: Text('Log in', style: TextStyle(color: Colors.white)),
                  ),
                ),

                SizedBox(height: 10.0),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignupScreen(),
                            ),
                          );
                        },
                        child: Text('Sign up', style: TextStyle(color: Colors.blue)),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ResetPasswordScreen(),
                            ),
                          );
                        },
                        child: Text('Reset password', style: TextStyle(color: Colors.blue)),
                      ),
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
