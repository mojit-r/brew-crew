import 'package:brew_crew/services/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthService auth = AuthService();

    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text('Brew Crew'),
        backgroundColor: Colors.brown[400],
        actions: [
          ElevatedButton.icon(
            label: Text('Sign out'),
            icon: Icon(Icons.person),
            onPressed: () async {
              await auth.signOut();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.brown[50],
              foregroundColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
