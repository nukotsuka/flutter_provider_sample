import 'dart:convert';

import 'package:flutter_provider_sample/domain/entity/index.dart';
import 'package:flutter_provider_sample/domain/http_client.dart';
import 'package:flutter_provider_sample/domain/request.dart';

class PokemonRepository {
  // MARK: - Variables

  final HttpClient _client;

  // MARK: - Constructor

  const PokemonRepository(this._client);

  // MARK: - Methods

  Future<List<Pokemon>> getAllPokemons() async {
    const request = const Request(
      method: HTTPMethod.get,
      path: '/pokedex.json',
      data: null,
    );
    final response = await _client.send(request);
    final json = jsonDecode(response?.data);
    return (json as List<dynamic>)
        .cast<Map<String, dynamic>>()
        .map((pokemonJson) => Pokemon.fromJson(pokemonJson))
        .toList();
  }
}
