import 'package:flutter/material.dart';
import 'package:prosper_blog/PlatformService.dart';

import 'package:prosper_blog/ReUsableComponent/ReUsableButton.dart';
import 'package:prosper_blog/ReUsableComponent/ReUsableText.dart';

class ProfileInFo extends StatelessWidget {
  String data =
      'An artist of considerable range, Jenna the name taken by Melbourne-raised, Brooklyn-based Nick Murphy writes, performs and records all of his own music, giving it a warm, intimate feel with a solid groove structure. An artist of considerable range.';
  late bool isMobile;

  @override
  Widget build(BuildContext context) {
    isMobile = PlatFormServices.isMobile(context) ? true : false;
    return Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      /// card header
      Container(
          width: double.infinity,
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Spacer(flex: 1),
            SocialValue('Friends', 22),
            SocialValue('Photos', 10),
            SocialValue('Comments', 86),
            Spacer(flex: 10),
            NormalButton('Edit', Colors.white, '', Colors.white, Colors.teal),
            Spacer(flex: 1)
          ])),
      SizedBox(height: isMobile ? 20 : 50), LargeBoldTextBlack('Prosper Mkoni'),
      SizedBox(height: 10),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.location_pin, size: 20, color: Colors.grey[400]),
            SizedBox(width: 5),
            NormalGreyText('University of Zimbabwe, Harare')
          ]),
      SizedBox(height: 30),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.work, size: 20, color: Colors.grey[400]),
            SizedBox(width: 5),
            NormalGreyText('Software Developer - Front-End & UI/UX Design')
          ]),
      SizedBox(height: 10),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.school, size: 20, color: Colors.grey[400]),
            SizedBox(width: 5),
            NormalGreyText('Computer Engineering')
          ]),

      /// description
      Divider(height: 30, thickness: 1, color: Colors.grey[300]),
      NormalGreyText(data),
      SizedBox(height: 10),
      TextButtons('Show more', Colors.green)
    ]));
  }

  Widget SocialValue(String label, int value) => Container(
      padding: EdgeInsets.all(5),
      height: 50,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('$value',
                style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 12,
                    fontWeight: FontWeight.bold)),
            Text(label,
                style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 12,
                    fontWeight: FontWeight.bold))
          ]));
}
