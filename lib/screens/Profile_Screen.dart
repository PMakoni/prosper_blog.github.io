import 'package:flutter/material.dart';
import 'package:prosper_blog/Components/FooterPanel.dart';
import 'package:prosper_blog/Components/ProfilePanle.dart';
import 'package:prosper_blog/Components/TopBackground.dart';

import '../Components/HeaderPanel.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 189, 185, 185),
      body: SafeArea(
          child: Stack(
        children: [
          TopBackground(),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  HeaderPanel(),
                  ProfilePanle(),
                  FooterPanel(),
                ]),
          )
        ],
      )),
    );
  }
}
