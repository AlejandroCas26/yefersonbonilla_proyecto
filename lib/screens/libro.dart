import 'package:flutter/material.dart';
import 'package:yefersonbonilla_proyecto/models/libros.dart';
import 'package:yefersonbonilla_proyecto/services/data_service.dart';

class BookListScreen extends StatefulWidget {
  @override
  _BookListScreenState createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  late List<Book> books = []; 

  @override
  void initState() {
    super.initState();
    DataService().getBooks().then((bookList) {
      setState(() {
        books = bookList;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Libros'),
      ),
      body: _buildBookList(),
    );
  }

  Widget _buildBookList() {
    return ListView.builder(
      itemCount: books.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(books[index].title),
        );
      },
    );
  }
}
