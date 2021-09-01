import 'package:flutter_provider_sample/domain/index.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../mock/index.dart';

void main() {
  late final PokemonRepository mockPokemonRepository;
  late final PokemonService pokemonService;

  setUp(() {
    mockPokemonRepository = MockPokemonRepository();
    pokemonService = PokemonService(mockPokemonRepository);
  });

  group('getAll', () {
    final pokemons = [MockPokemon(), MockPokemon(), MockPokemon()];

    test('call pokemonRepository.getAll', () async {
      when(mockPokemonRepository.getAll())
          .thenAnswer((_) => Future.value(pokemons));

      final actual = await pokemonService.getAll();

      expect(actual, pokemons);
    });
  });
}
