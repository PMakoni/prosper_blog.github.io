// ignore_for_file: file_names, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';

class PlatFormServices extends StatelessWidget {
  final Widget mobile, tablet, desktop;

  const PlatFormServices(
      {required Key key,
      required this.mobile,
      required this.tablet,
      required this.desktop})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width > 1100)
      return desktop;
    else if (size.width >= 850 && tablet != null)
      return tablet;
    else
      return mobile;
  }

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;
}
