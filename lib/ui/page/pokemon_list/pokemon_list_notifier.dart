import 'package:flutter_provider_sample/domain/index.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:state_notifier/state_notifier.dart';

import 'pokemon_list_state.dart';

typedef PokemonListNotifierProvider
    = StateNotifierProvider<PokemonListNotifier, PokemonListState>;

class PokemonListNotifier extends StateNotifier<PokemonListState>
    with LocatorMixin {
  // MARK: - Variables

  late PokemonService _pokemonService;

  // MARK: - Constructor

  PokemonListNotifier() : super(const PokemonListState());

  // MARK: - Life Cycle

  @override
  Future<void> initState() async {
    super.initState();

    _pokemonService = read();

    await _loadPokemons();
  }

  // MARK:- Service Methods

  Future<void> _loadPokemons() async {
    state = state.copyWith(isLoading: true);
    try {
      final pokemons = await _pokemonService.getAll();
      state = state.copyWith(pokemons: pokemons);
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }
}
