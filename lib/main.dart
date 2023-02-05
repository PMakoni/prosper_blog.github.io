// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:prosper_blog/screens/Profile_Screen.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProfileScreen();
  }
}

/// Thank you so much 