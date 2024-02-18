import 'package:flutter/material.dart';
import 'package:yefersonbonilla_proyecto/screens/book_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '¡Bienvenido a tu aplicación de libros!',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookListScreen(),
                  ),
                );
              },
              child: Text('Ver Libros'),
            ),
          ],
        ),
      ),
    );
  }
}
