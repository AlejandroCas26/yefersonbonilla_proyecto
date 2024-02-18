import 'dart:convert';
import 'package:flutter/services.dart';

class Book {
  final String title;
  final String author;

  Book(this.title, this.author);

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      json['title'] ?? '',
      json['author'] ?? '',
    );
  }
}

class JsonReader {
  static Future<List<Book>> readData() async {
    try {
      final String data = await rootBundle.loadString('database/data.json');
      final List<dynamic> jsonData = json.decode(data);

      final List<Book> books = jsonData.map((item) => Book.fromJson(item)).toList();

      return books;
    } catch (e) {
      print('Error al leer los datos JSON: $e');
      return []; 
    }
  }
}

void loadData() async {
  List<Book> books = await JsonReader.readData();
  print(books);
}
