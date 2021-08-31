import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_name.freezed.dart';
part 'pokemon_name.g.dart';

@freezed
class PokemonName with _$PokemonName {
  const factory PokemonName({
    required String english,
    required String japanese,
  }) = _PokemonName;

  factory PokemonName.fromJson(Map<String, dynamic> json) =>
      _$PokemonNameFromJson(json);
}
