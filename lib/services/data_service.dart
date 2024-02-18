import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:yefersonbonilla_proyecto/models/libros.dart';

class DataService {
  Future<List<Book>> getBooks() async {
    String jsonData = await rootBundle.loadString('database/data.json');
    List<dynamic> jsonList = json.decode(jsonData)['data'];
    List<Book> books = jsonList.map((json) => Book.fromJson(json)).toList();
    return books;
  }
}
