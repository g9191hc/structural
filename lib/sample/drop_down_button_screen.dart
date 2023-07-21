import 'package:flutter/material.dart';
import 'package:structural/sample/default_sample_layout.dart';

class DropDownButtonScreen extends StatelessWidget {
  const DropDownButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultSampleLayout(
      title: 'DropDownButtonScreen',
      body: _Body(),
    );
  }
}

class _Body extends StatefulWidget {
  const _Body({super.key});

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  List<String> items = ['A', 'B', 'C', 'D', 'E'];
  String? currentItem;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton(
        //표시할 값
        value: currentItem,

        //value가 null이나 공백일 경우 보여줌
        hint: Text('선택'),

        items: items
            .map(
              (item) => DropdownMenuItem(
                value: item,
                child: Text(item),
              ),
            )
            .toList(),

        //onChanged를 거슬러 올라가면 파라미터 1개를 받는 것을 알 수 있음
        onChanged: (value) {
          setState(() {
            currentItem = value!;
          });
        },

      ),
    );
  }
}