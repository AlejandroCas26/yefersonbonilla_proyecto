import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return MyHomePage(
          title: 'My App',
          initialState: state, 
        );
      },
    ),
  ],
);

class MyHomePage extends StatelessWidget {
  final String title;
  final GoRouterState initialState; 

  MyHomePage({required this.title, required this.initialState});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('My App'),
      ),
    );
  }
}
