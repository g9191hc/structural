import 'package:flutter/material.dart';

import '../component/text_field_card.dart';

class FoundationScreen extends StatelessWidget {
  const FoundationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
                  {'title': 'Cx', 'unit':'mm'},
                  {'title': 'Cy', 'unit':'mm'},
                ],
              ),
              TextFieldCard(
                title: '철근',
                textFields: [
                  {'title': '주근', 'unit':''},
                ],
                isNumber: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
