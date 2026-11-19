import 'package:brew_crew/screens/home/home.dart';
import 'package:brew_crew/services/custom_user.dart';
import 'package:flutter/material.dart';

import 'package:brew_crew/screens/auth/authenticate.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    CustomUser? user = Provider.of<CustomUser?>(context);

    // return either Home or Authenticate Widget
    if (user == null) {
      return const Authenticate();
    } else {
      return const Home();
    }
  }
}
