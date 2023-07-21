import 'package:flutter/material.dart';
import 'package:structural/sample/default_sample_layout.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultSampleLayout(
      title: 'Form',
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey();

    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormFieldSet(
            title: '숫자',
          ),
          CustomTextFormFieldSet(
            title: '문자',
            isNumber: false,
          ),
          ElevatedButton(
            onPressed: (){
              if(formKey.currentState == null) return;
              if(formKey.currentState!.validate()) print('오류가 없습니다');
              else print('오류가 있습니다');
            },
            child: Text('검증'),
          )
        ],
      ),
    );
  }
}

class CustomTextFormFieldSet extends StatelessWidget {
  final String title;
  bool isNumber;

  CustomTextFormFieldSet({
    super.key,
    required this.title,
    this.isNumber = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: TextFormField(
              keyboardType:
                  isNumber ? TextInputType.number : TextInputType.multiline,
              validator: (value) =>
                  value == null || value.isEmpty ? '내용을 입력 해 주세요' : null,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                hintText: '$title 입력',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.blue[200],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
