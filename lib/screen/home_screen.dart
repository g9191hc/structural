import 'package:flutter/material.dart';
import 'package:structural/screen/foundation_screen.dart';

import '../component/text_field_card.dart';

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
      drawer: _Drawer(),
      // endDrawer: Drawer(),
      body: _Body(),
    );
  }
}

class _Drawer extends StatelessWidget {
  const _Drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => FoundationScreen(),
            ),
          );
        },
        child: Text('기초'),
      ),
    );
  }
}
