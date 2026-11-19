import 'package:brew_crew/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    AuthService _auth = AuthService();
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        title: Text('Sign in to Brew Crew'),
        elevation: 0.0,
        backgroundColor: Colors.brown[400],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: ElevatedButton(
          onPressed: () async {
            final result = await _auth.signInAnon();
            if (result == null) {
              print('Sign in failed');
            } else {
              print('Sign in successful');
              print(result);
            }
          },
          child: Text('Sign in anon'),
        ),
      ),
    );
  }
}
