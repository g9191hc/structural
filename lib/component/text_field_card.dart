import 'package:flutter/material.dart';

class TextFieldCard extends StatelessWidget {
  final String title;
  final List<Map<String, dynamic>> textFields;
  bool isNumber;

  TextFieldCard({
    this.isNumber = true,
    super.key,
    required this.title,
    required this.textFields,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Title(),
          ...renderTextFields(),
        ],
      ),
    );
  }

  Widget _Title(){
    return Text(
      title,
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  renderTextFields() {
    return textFields
        .map(
          (e) => Row(
            children: [
              SizedBox(
                width: 40,
                child: Text(
                  e['title'],
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: 100,
                child: TextFormField(
                  validator : (String? val)=>
                    (val == null || val.isEmpty) ? '값을 입력 해 주세요' : null
                  ,
                  maxLines: 1,
                  keyboardType: isNumber == true ? TextInputType.number : null,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blue[100],
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                  ),
                  // expands: true,
                ),
              ),
              const SizedBox(
                width: 8.0,
              ),
              Text(
                e['unit'],
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        )
        .toList();
  }
}
