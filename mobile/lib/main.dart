import 'package:flutter/material.dart';
import 'package:mobile/ui/pokedexrow.dart';
import 'package:mobile/services/pokemonservices.dart';

void main() {
  // Routes.initRoutes();
  runApp(MaterialApp(
    title: "Pokédex",
    debugShowCheckedModeBanner: false,
    home: PokedexHome(),
  ));
}

class PokedexHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: Text("Pokedex"),
          centerTitle: true,
        ),
        body: Container(
          child: ListView.builder(
            itemBuilder: (context, index) {
              final idx = index + 1;
              print(idx.toString());
              return PokedexRow(getPokemon(id: idx.toString()));
            },
          ),
        )
    ); 
  }
}