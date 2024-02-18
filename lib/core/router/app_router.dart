import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yefersonbonilla_proyecto/screens/home_page.dart'; 

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
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
