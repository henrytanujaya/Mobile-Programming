import 'dart:convert';

Pokemon pokemonFromJson(String str) => Pokemon.fromJson(json.decode(str));

String pokemonToJson(Pokemon data) => json.encode(data.toJson());

class Pokemon {
    List<String> abilities;
    int height;
    int id;
    String name;
    List<String> types;
    int weight;
    String image;

    Pokemon({
        this.abilities,
        this.height,
        this.id,
        this.name,
        this.types,
        this.weight,
        this.image
    });

    factory Pokemon.fromJson(Map<String, dynamic> json) => new Pokemon(
        abilities: (json['abilities'] as List)
        .map((data) => data['ability']['name'].toString())
        .toList(),
        height: json["height"],
        id: json["id"],
        name: json["name"],
        types: (json['types'] as List)
        .map((data) => data['type']['name'].toString())
        .toList(),
        weight: json["weight"],
        image: json['sprites']['other']['official-artwork']['front_default']
    );

    Map<String, dynamic> toJson() => {
        "abilities": abilities,
        "height": height,
        "id": id,
        "name": name,
        "types": types,
        "weight": weight,
        "image": image,
    };
   
}