import 'package:flutter/material.dart';
import 'package:mobile/model/pokemon.dart';
export 'package:mobile/main.dart';
//import 'package:sample/ui/common/pokemon_summary.dart';

class PokemonDetailPage extends StatelessWidget {
  final Pokemon pokemon;
  PokemonDetailPage(this.pokemon);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ConstrainedBox(
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(45),
                            topRight: Radius.circular(45))),
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Image.network(
                            pokemon.image),
                          Text(
                            pokemon.name.toUpperCase(),style: TextStyle(fontSize: 30.0,
                              fontWeight: FontWeight.w600)),
                          Row (
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children:  
                            pokemon.abilities.map(
                              (t) =>  Text(t, style: TextStyle(fontSize: 20.0,
                              fontWeight: FontWeight.w600
                            ))).toList(),
                          ),
                          Row (
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children:  
                            pokemon.types.map(
                              (t) => Text(t, style: TextStyle(fontSize: 20.0,
                              fontWeight: FontWeight.w600))).toList()
                          ),
                          Text(
                            "Height :" + pokemon.height.toString(),style: TextStyle(fontSize: 18.0,
                              fontWeight: FontWeight.w600)),
                          Text(
                            "Weight :" + pokemon.weight.toString(),style: TextStyle(fontSize: 18.0,
                              fontWeight: FontWeight.w600)
                          )
                        ],),
                    )),
                constraints: BoxConstraints.expand(),
              ),
            ),
          ], 
        ),
      ),
    );
  }
}

class TypeTextColor {
  static Color mixColor(BuildContext context, String type) {
    switch (type) {
      case 'normal':
        return Color(0xffa8a878);
      case 'fire':
        return Color(0xfff08030);
      case 'fighting':
        return Color(0xffc03028);
      case 'water':
        return Color(0xff6890f0);
      case 'flying':
        return Color(0xffa890f0);
      case 'grass':
        return Color(0xff78c850);
      case 'poison':
        return Color(0xffa040a0);
      case 'electric':
        return Color(0xfff8d030);
      case 'ground':
        return Color(0xffe0c068);
      case 'psychic':
        return Color(0xfff85888);
      case 'rock':
        return Color(0xffb8a038);
      case 'ice':
        return Color(0xff98d8d8);
      case 'bug':
        return Color(0xffa8b820);
      case 'dragon':
        return Color(0xff7038f8);
      case 'ghost':
        return Color(0xff705898);
      case 'dark':
        return Color(0xff705848);
      case 'steel':
        return Color(0xffb8b8d0);
      case 'fairy':
        return Color(0xffee99ac);
      default:
        return null;
    }
  }
}