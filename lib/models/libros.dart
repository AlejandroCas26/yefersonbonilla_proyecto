import 'package:yefersonbonilla_proyecto/models/villanos.dart'; 

class Book {
  final int id;
  final int year;
  final String title;
  final String handle;
  final String publisher;
  final String isbn;
  final int pages;
  final List<String> notes;
  final DateTime createdAt;
  final List<Villain> villains;

  Book({
    required this.id,
    required this.year,
    required this.title,
    required this.handle,
    required this.publisher,
    required this.isbn,
    required this.pages,
    required this.notes,
    required this.createdAt,
    required this.villains,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'],
      year: json['Year'],
      title: json['Title'],
      handle: json['handle'],
      publisher: json['Publisher'],
      isbn: json['ISBN'],
      pages: json['Pages'],
      notes: List<String>.from(json['Notes'] ?? []),
      createdAt: DateTime.parse(json['created_at']),
      villains: (json['villains'] as List<dynamic> ?? [])
          .map((villainJson) => Villain.fromJson(villainJson))
          .toList(),
    );
  }
}
