import 'package:flutter/material.dart';
import 'package:mobile/model/pokemon.dart';

class PokemonSummary extends StatelessWidget {
  final Pokemon pokemon;
  PokemonSummary(this.pokemon);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        PokemonCard(pokemon),
      ],
    );
  }
}



class PokemonCard extends StatelessWidget {
  final Pokemon pokemon;
  PokemonCard(this.pokemon);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: Card(
        elevation: 2,
        margin: EdgeInsets.only(left: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 75,
              width:75,
              decoration: BoxDecoration(
              image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: NetworkImage(pokemon.image))),
            ),
            Text(
              pokemon.name.toUpperCase(),
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}