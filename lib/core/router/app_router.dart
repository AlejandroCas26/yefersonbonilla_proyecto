import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:yefersonbonilla_proyecto/screens/home_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  errorPageBuilder: (context, state) {
    return MaterialPage( 
      child: Scaffold(
        body: Center(
          child: Text('Error: ${state.error}'),
        ),
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
