import 'package:flutter/material.dart';

class Usuario {
  // Variáveis
  final int? id;
  final String nome;
  final String cpf;
  final DateTime dataNascimento;
  final String telefone;
  final String email;
  final String senha;    // Não é bom, mas por enquanto será assim por falta de tempo

  // Construtor
  Usuario ({
    this.id,
    required this.nome, 
    required this.cpf, 
    required this.dataNascimento, 
    required this.telefone, 
    required this.email,
    required this.senha, 
  });

  // Salvar
  Map<String, dynamic> toMap() => {
    'id': id,
    'nome': nome,
    'cpf': cpf,
    'data_nascimento': dataNascimento.toIso8601String(),
    'telefone': telefone,
    'email': email,
    'senha': senha,
  };

  // Leitura
  factory Usuario.fromMap(Map<String, dynamic> map) => Usuario(
    id: map['id'] as int?,
    nome: map['nome'] as String,
    cpf: map['cpf'] as String,
    dataNascimento: DateTime.parse(map['data_nascimento'] as String),
    telefone: map['telefone'] as String,
    email: map['email'] as String,
    senha: map['senha'] as String,
  );

}