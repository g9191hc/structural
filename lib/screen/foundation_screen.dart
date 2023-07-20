import 'package:flutter/material.dart';

import '../component/text_field_card.dart';

class FoundationScreen extends StatelessWidget {
  const FoundationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey();

    return Scaffold(
      body: Form(
        key: formKey,
        child: ListView(
          children: [
            Column(
              children: [
                TextFieldCard(
                  title: '재료강도',
                  textFields: [
                    {'title': 'fck', 'unit': 'MPa'},
                    {'title': 'fy', 'unit': 'MPa'},
                  ],
                ),
                TextFieldCard(
                  title: '하중',
                  textFields: [
                    {'title': 'DL', 'unit': 'kN/m²'},
                    {'title': 'LL', 'unit': 'kN/m²'},
                    {'title': '자중', 'unit': 'kN'},
                    {'title': '흙높이', 'unit': 'mm'},
                    {'title': '상재하중', 'unit': 'kN/m²'},
                  ],
                ),
                TextFieldCard(
                  title: '지내력',
                  textFields: [
                    {'title': 'qa', 'unit': 'kN/m²'},
                  ],
                ),
                TextFieldCard(
                  title: '기둥단면치수',
                  textFields: [
                    {'title': 'Cx', 'unit': 'mm'},
                    {'title': 'Cy', 'unit': 'mm'},
                  ],
                ),
                TextFieldCard(
                  title: '철근',
                  textFields: [
                    {'title': '주근', 'unit': ''},
                  ],
                  isNumber: false,
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState == null) return; //더이상 실행 안 함
                if(formKey.currentState!.validate()) print('에러가 없습니다'); //모든 하위 TextFormField위젯의 validator가 null(=에러가 없음)이면 true
                else print('에러가 있습니다');
              },
              child: Text('Check(검증)'),
            )
          ],
        ),
      ),
    );
  }
}
