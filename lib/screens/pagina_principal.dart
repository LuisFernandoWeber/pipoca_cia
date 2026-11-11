import 'package:flutter/material.dart';
import 'package:pipoca_cia/screens/tela_filmes.dart';

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({super.key});

  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipal();
}

class _PaginaPrincipal extends State<PaginaPrincipal> {
  int _telaSelecionada = 0;

  // A ordem deve ser igual ao dos botões
  final List<Widget> _telas = [
    const TelaFilmes(),
    const Center(child: Text('Ingressos')),
    const Center(child: Text('Perfil')),
    //const TelaFilmes(),
    // demais telas
  ];

  final List<String> _titulos = const ['Filmes', 'Ingressos', 'Perfil'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _telas[_telaSelecionada],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _telaSelecionada,
        backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
        onDestinationSelected: (index) {
          setState(() => _telaSelecionada = index);
        },
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.movie_outlined),
            selectedIcon: const Icon(Icons.movie),
            label: 'Filmes',
          ),
          NavigationDestination(
            icon: const Icon(Icons.movie_outlined),
            selectedIcon: const Icon(Icons.movie),
            label: 'Ingressos',
          ),
          NavigationDestination(
            icon: const Icon(Icons.movie_outlined),
            selectedIcon: const Icon(Icons.movie),
            label: 'Perfil',
          ),
          
        ],
      ),
    );
  }
}
