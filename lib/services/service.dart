import 'package:flutter/material.dart';
import 'package:yefersonbonilla_proyecto/models/libros.dart';
import 'package:yefersonbonilla_proyecto/services/data_service.dart';

class BookListScreen extends StatefulWidget {
  const BookListScreen({Key? key}) : super(key: key);

  @override
  _BookListScreenState createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  late List<Book> books = [];
  bool loading = true;

  @override
  void initState() {
    super.initState();
    _loadBooks();
  }

  Future<void> _loadBooks() async {
    try {
      final bookList = await DataService().getBooks();
      setState(() {
        books = bookList;
        loading = false;
      });
    } catch (e) {
      // Manejar errores aquí
      print('Error al cargar los libros: $e');
      setState(() {
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Libros'),
      ),
      body: loading
          ? Center(child: CircularProgressIndicator())
          : books.isEmpty
              ? Center(child: Text('No se encontraron libros'))
              : _buildBookList(),
    );
  }

  Widget _buildBookList() {
    return ListView.separated(
      itemCount: books.length,
      separatorBuilder: (context, index) => Divider(),
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(books[index].title),
        );
      },
    );
  }
}
