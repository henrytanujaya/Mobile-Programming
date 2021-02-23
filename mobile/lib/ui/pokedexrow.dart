import 'package:flutter/material.dart';
import 'package:mobile/model/pokemon.dart';
import 'detail/pokemondetailpage.dart';
import 'homepage/pokemonsummary.dart';

class PokedexRow extends StatelessWidget {
  final Future<Pokemon> pokemon;
  PokedexRow(this.pokemon);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        height: 150,
        child: FutureBuilder<Pokemon>(
          future: pokemon,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return GestureDetector(
                child: Hero(
                  tag: "pokemon-summary-hero-${snapshot.data.id}",
                  child: PokemonSummary(snapshot.data),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              PokemonDetailPage(snapshot.data)));
                },
              );
            } else {
              return Container(
                height: 20,
                width: 20,
                child: CircularProgressIndicator()
                );
            }
          },
        ));
  }
}
