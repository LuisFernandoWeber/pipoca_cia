import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/filme.dart';

class FilmeService {

  Future<List<Filme>> fetchMovies() async {
    await Future.delayed(const Duration(seconds: 1));
    final jsonString = await rootBundle.loadString('assets/data/movies.json');
    final List<dynamic> data = jsonDecode(jsonString);
    return data.map((item) => Filme.fromMap(item as Map<String, dynamic>)).toList();
  }
}