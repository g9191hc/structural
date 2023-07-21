import 'package:flutter/material.dart';
import 'package:structural/sample/default_sample_layout.dart';
import 'package:structural/sample/drop_down_button_screen.dart';

import 'form_screen.dart';

class SampleHomeScreen extends StatelessWidget {
  const SampleHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultSampleLayout(
      title: 'SampleHomeScreen',
      body: Center(
        child: Column(
          children: [
            CustomButton(
              push: DropDownButtonScreen(),
            ),
            CustomButton(
              push: FormScreen(),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final Widget push;

  const CustomButton({
    super.key,
    required this.push,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) => push));
      },
      child: Text(push.toString()),
    );
  }
}
