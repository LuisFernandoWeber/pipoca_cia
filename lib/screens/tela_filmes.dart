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
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                              image: DecorationImage(
                                image: AssetImage('assets/images/posters/images (1).jpg'),
                                fit: BoxFit.cover,
                              )
                            ),
                          ), 
                        ),


                        // Rodapé
                        Padding(
                          padding: EdgeInsets.all(12),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Titulo
                              Text( 
                                'Duna: Parte 2',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.onSurface,                              
                                  fontSize: 14,
                                  fontFamily: 'Montserrat',
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 6),

                              // Generos
                              Row(
                                children: [
                                  
                                  SizedBox(width: 6),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(8)),
                                      color: Theme.of(context).colorScheme.surface,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),

                                      child: Text(
                                          'Ficção',
                                          style: TextStyle(
                                            color: const Color.fromARGB(255, 190, 190, 190),
                                            fontSize: 8,
                                            fontFamily: 'Montserrat',
                                          ),
                                        ),
                                      ),
                                    ),
                                  SizedBox(width: 6),

                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(8)),
                                      color: Theme.of(context).colorScheme.surface,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),

                                      child: Text(
                                        'Ação',
                                        style: TextStyle(
                                          color: const Color.fromARGB(255, 190, 190, 190),
                                          fontSize: 8,
                                          fontFamily: 'Montserrat',
                                        ),
                                      ),
                                    ),
                                  ),
                                    
                                    

                                  

                                ]
                              ),
                              SizedBox(height: 6),



                              // Tempo e ver Mias
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                                children: [
                                  // Grupo da esquerda: ícone + duração
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.schedule,
                                        color: const Color.fromARGB(255, 190, 190, 190),
                                        size: 15,
                                      ),
                                      const SizedBox(width: 4),   // respiro entre ícone e texto
                                      Text(
                                        '150 min',
                                        style: const TextStyle(
                                          color: Color.fromARGB(255, 190, 190, 190),
                                          fontSize: 10,
                                          fontFamily: 'Montserrat',
                                        ),
                                      ),
                                    ],
                                  ),

                                  // Grupo da direita: "Ver Mais"
                                  Text(
                                    'Ver Mais',
                                    style: TextStyle(
                                      color: Theme.of(context).colorScheme.primary,
                                      fontSize: 12,
                                      fontFamily: 'Montserrat',
                                    ),
                                  ),
                                ],
                              ),


                            ],
                          ),


                    
     
                        ),


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