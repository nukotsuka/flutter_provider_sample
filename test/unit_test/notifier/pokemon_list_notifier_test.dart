import 'package:flutter_provider_sample/domain/index.dart';
import 'package:flutter_provider_sample/ui/index.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../mock/index.dart';

void main() {
  late final PokemonService mockPokemonService;
  late final PokemonListNotifier pokemonListNotifier;

  setUp(() {
    mockPokemonService = MockPokemonService();
    pokemonListNotifier = PokemonListNotifier()
      ..debugMockDependency(mockPokemonService);
  });

  test('initState()', () async {
    final pokemons = [MockPokemon(), MockPokemon(), MockPokemon()];

    // Before calling initState()
    expect(pokemonListNotifier.debugState.pokemons, isEmpty);
    expect(pokemonListNotifier.debugState.isLoading, false);

    // Call initState()
    when(mockPokemonService.getAll()).thenAnswer((_) => Future.value(pokemons));
    pokemonListNotifier.debugUpdate();

    // Wait for a call
    await untilCalled(mockPokemonService.getAll());

    // After calling initState()
    expect(pokemonListNotifier.debugState.pokemons, pokemons);
    expect(pokemonListNotifier.debugState.isLoading, false);
  });
}
