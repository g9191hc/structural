import 'package:flutter/material.dart';

class DefaultSampleLayout extends StatelessWidget {
  final String title;
  final Widget body;

  const DefaultSampleLayout({
    super.key,
    required this.title,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: body,
    );
  }
}
