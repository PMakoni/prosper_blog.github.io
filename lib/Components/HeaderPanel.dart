import 'package:flutter/material.dart';
import 'package:prosper_blog/PlatformService.dart';
import 'package:prosper_blog/ReUsableComponent/ReUsableButton.dart';

class HeaderPanel extends StatelessWidget {
  late bool isMobile;
  @override
  Widget build(BuildContext context) {
    isMobile = PlatFormServices.isMobile(context) ? true : false;
    double _width = MediaQuery.of(context).size.width;
    return Container(
        padding: EdgeInsets.symmetric(
            horizontal: _width / 10, vertical: isMobile ? 30 : 10),
        child: isMobile
            ? Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  leftSidePanel(),
                  rightSidePanel(),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    leftSidePanel(),
                    rightSidePanel(),
                  ]));
  }

  Widget leftSidePanel() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Eng P Makoni',
            style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w800,
                letterSpacing: 0.5),
          ),
          isMobile
              ? Spacer(
                  flex: 1,
                )
              : SizedBox(
                  width: 50,
                ),
          IconLabelButtons('Docs', 'assets/icon/document.svg')
        ],
      );

  Widget rightSidePanel() =>
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        LogoButton('assets/icon/facebook.svg'),
        LogoButton('assets/icon/twitter.svg'),
        LogoButton('assets/icon/linkedin.svg'),
        NormalButton('DOWNLOAD', Colors.grey, 'assets/icon/download.png',
            Colors.grey, Colors.white)
      ]);
}
