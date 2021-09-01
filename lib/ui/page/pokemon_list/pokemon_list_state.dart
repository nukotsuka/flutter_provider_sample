import 'package:flutter_provider_sample/domain/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_list_state.freezed.dart';

@freezed
class PokemonListState with _$PokemonListState {
  const factory PokemonListState({
    @Default([]) List<Pokemon> pokemons,
    @Default(false) bool isLoading,
  }) = _PokemonListState;
}
