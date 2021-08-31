import 'package:flutter_provider_sample/domain/entity/index.dart';
import 'package:flutter_provider_sample/domain/repository/index.dart';

class PokemonService {
  // MARK: - Variables

  final PokemonRepository _pokemonRepository;

  // MARK: - Constructor

  const PokemonService(this._pokemonRepository);

  // MARK: - Methods

  Future<List<Pokemon>> getAll() {
    return _pokemonRepository.getAll();
  }
}
