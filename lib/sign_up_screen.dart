import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
        title: Text('Sign up', style: TextStyle(color: Colors.white)),
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
                    if (value == null || value.isEmpty) return 'Please enter name';
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    labelText: 'Name:',
                  ),
                ),
                SizedBox(height: 10.0),


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
                    child: Text('Sign up', style: TextStyle(color: Colors.white)),
                  ),
                ),
                SizedBox(height: 10.0),


                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Back', style: TextStyle(color: Colors.black)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
