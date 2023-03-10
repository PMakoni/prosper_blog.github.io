import 'package:flutter/material.dart';
import 'package:prosper_blog/Components/ProfileCard.dart';
import 'package:prosper_blog/PlatformService.dart';

class ProfilePanle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isMobile = PlatFormServices.isMobile(context) ? true : false;
    double _width = MediaQuery.of(context).size.width;
    return Container(
        margin: EdgeInsets.fromLTRB(isMobile ? 15 : _width / 10,
            isMobile ? 0 : 150, isMobile ? 15 : _width / 10, 10),
        child: Stack(children: [
          ProfileCard(),
          Expanded(
              child:
                  Container(alignment: Alignment.center, child: ProfileImage()))
        ]));
  }

  Widget ProfileImage() => CircleAvatar(
      radius: 80, backgroundImage: AssetImage('assets/images/pro.jpg'));
}
