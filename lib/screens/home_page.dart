import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  final GoRouterState? initialState;

  const MyHomePage({Key? key, required this.title, this.initialState}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(
        child: Text('Libreria'),
      ),
    );
  }
}
