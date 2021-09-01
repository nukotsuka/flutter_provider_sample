import 'package:flutter_provider_sample/app_config.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../pokemon_name/pokemon_name.dart';
import '../pokemon_type.dart';

part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

@freezed
class Pokemon with _$Pokemon {
  const factory Pokemon({
    required int id,
    required PokemonName name,
    required List<PokemonType> type,
  }) = _Pokemon;

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);
}

extension PokemonEx on Pokemon {
  String get paddedID => id.toString().padLeft(3, '0');

  String get imageURL => '${AppConfig.pokemonApiEndpoint}/images/$paddedID.png';

  String get spriteURL =>
      '${AppConfig.pokemonApiEndpoint}/sprites/${paddedID}MS.png';
}
