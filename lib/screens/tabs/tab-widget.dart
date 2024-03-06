import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  final String title;

  const TabWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title),
    );
  }
}
