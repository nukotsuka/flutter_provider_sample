import 'package:flutter/material.dart';
import 'package:flutter_provider_sample/ui/index.dart';
import 'package:provider/provider.dart';

class PokemonListPage extends StatelessWidget {
  // MARK: - Const

  static const String _logoPath = 'assets/images/pokemon_logo.png';
  static const double _logoHeight = 40;

  // MARK: - Constructor

  const PokemonListPage();

  // MARK: - Views

  ListView _pokemonListView(BuildContext context) {
    final pokemons = context.select((PokemonListState state) => state.pokemons);
    return ListView.builder(
      padding: const EdgeInsets.all(24),
      itemCount: pokemons.length,
      itemBuilder: (context, index) {
        final pokemon = pokemons[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: PokemonListItem(
            key: Key(pokemon.id.toString()),
            pokemon: pokemon,
          ),
        );
      },
    );
  }

  // MARK: - Layout

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(_logoPath, height: _logoHeight),
      ),
      body: _pokemonListView(context),
    );
  }
}
