import 'package:flutter/material.dart';

class Filme {
  // Variáveis
  final int? id;
  final String titulo;
  final String descricao;       
  final String diretorioFoto;
  final int duracaoMin;
  final DateTime dataLancamento;
  final bool disponivel;

  // Construtor
  Filme({
    this.id,
    required this.titulo,
    required this.descricao,    
    required this.diretorioFoto, 
    required this.duracaoMin,
    required this.dataLancamento,
    required this.disponivel,
  });

  // Objeto -> Map => Salvar
  Map<String, dynamic> toMap() => {
    'id': id,
    'titulo': titulo,
    'descricao': descricao,
    'diretorio_foto': diretorioFoto,
    'duracao_min': duracaoMin,
    'data_lancamento': dataLancamento.toIso8601String(), 
    'disponivel': disponivel, 
  };

  // Map -> Objeto => Leitura
  factory Filme.fromMap(Map<String, dynamic> map) => Filme(
    id: map['id'] as int?,
    titulo: map['titulo'] as String,
    descricao: map['descricao'] as String,
    diretorioFoto: map['diretorio_foto'] as String,
    duracaoMin: map['duracao_min'] as int,
    dataLancamento: DateTime.parse(map['data_lancamento'] as String),
    disponivel: _boolFrom(map['disponivel']), 
  );  

  // Evitar erro por conta da variável boleana
  static bool _boolFrom(dynamic v) {
    if (v is bool) return v;
    if (v is int) return v == 1;
    return false;
  }
}