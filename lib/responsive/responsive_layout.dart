import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobilBody;
  final Widget webBody;
  const ResponsiveLayout(
      {Key? key, required this.mobilBody, required this.webBody})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 800) {
          return mobilBody;
        }
        return webBody;
      },
    );
  }
}
