import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  errorPageBuilder: (context, state) {
    return Scaffold(
      body: Center(
        child: Text('Error: ${state.error}'),
      ),
    );
  },
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomePage(),
    ),
    
  ],
);
