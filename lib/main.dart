import 'package:flutter/material.dart';
import 'screens/pagina_principal.dart';

void main() {
  runApp(const PipocaApp());
}


class PipocaApp extends StatelessWidget  {
  const PipocaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pipoca & Cia',
      debugShowCheckedModeBanner: false, // Remove a linha do Debug
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        
        // Paletas de cores
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF00F5D4),
          brightness: Brightness.dark
        ).copyWith(
          primary: const Color(0xFF00F5D4),                   // Primária
          secondary: const Color(0xFF7B2CBF),                 // Secundária
          surface: const Color(0xFF0B132B),                   // Fundo 
          surfaceContainerHighest: const Color(0xFF1C2541),   // Fundo secundário
          onSurface: const Color(0xFFE0E1DD),                 // Texto
          onPrimary: const Color(0xFF0B132B),                 // Texto 2 (sobre cor)
        ),

        scaffoldBackgroundColor: const Color(0xFF0B132B),
      ),
      
      home: const PaginaPrincipal(),

    );
  }



}