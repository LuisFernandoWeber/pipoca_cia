import 'package:flutter/material.dart';

class TelaFilmes extends StatefulWidget {
  const TelaFilmes({super.key});

  @override
  State<TelaFilmes> createState() => _TelaFilmePageState();
}

class _TelaFilmePageState extends State<TelaFilmes> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // App Bar
      appBar: AppBar(
        title: Text("Filmes"),
        backgroundColor: Theme.of(context).colorScheme.surface,
        foregroundColor: Theme.of(context).colorScheme.primary,
      ),

      // Corpo
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),  

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- Filtro de pesquisa ----

              // --- Filtro de genero ---

              // --- Card de destaque da semana ---

              // --- Grade de filmes ---
              // titulo
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'EM CARTAZ',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  Text(
                    'Atualizar',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 10,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),

              // Cards dos filmes em Cartaz
              GridView.builder(
                shrinkWrap: true,
                //physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,         // Colunas
                  crossAxisSpacing: 16,      // Espaçamento horizontal
                  mainAxisSpacing: 16,       // Espaçamento vertical
                  childAspectRatio: 0.75,    // Proporção de aspeto (altura/largura)
                ),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Container (
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surfaceContainerHighest,
                      borderRadius: BorderRadius.circular(8),
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Foto

                        // Titulo

                        // genero

                        //Duracao / Ver Mais
                        
                      ],
                    ),

                  );
                },
              ),

              




            ],
          ),
        ),
      ),

    );
  }
}