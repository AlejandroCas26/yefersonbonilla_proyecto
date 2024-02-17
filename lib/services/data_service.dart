import 'dart:convert';
import 'package:flutter/services.dart'; 
import 'package:yefersonbonilla_proyecto/models/libros.dart';

class DataService {
  Future<List<Book>> getBooks() async {
    String jsonData = await rootBundle.loadString('assets/data.json');
    List<dynamic> jsonList = json.decode(jsonData);
    List<Book> books = jsonList.map((json) => Book.fromJson(json)).toList();
    return books;
  }
}