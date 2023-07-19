import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'HomeScreen',
        ),
      ),
      drawer: Drawer(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Center(
                child: Text(
                  'hi',
                ),
              ),
            )
          ],
        ),
      ),
      // endDrawer: Drawer(),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              TextFieldCard(
                title: '재료강도',
                textFieldTitles: ['fck', 'fy'],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TextFieldCard extends StatelessWidget {
  final String title;
  final List<String> textFieldTitles;

  const TextFieldCard({
    super.key,
    required this.title,
    required this.textFieldTitles,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(title),
          ...textFieldTitles
              .map(
                (e) => Row(
                  children: [
                    SizedBox(
                      width: 40,
                      child: Text(
                        e,
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: TextFormField(
                          maxLines: 1,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.yellow[100],
                            contentPadding: EdgeInsets.symmetric(horizontal: 10.0,)
                          )
                          // expands: true,
                          ),
                    ),
                  ],
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
