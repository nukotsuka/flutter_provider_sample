import 'package:flutter_provider_sample/domain/index.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([
  // Entity
  Pokemon,

  // Repository
  PokemonRepository,

  // Service
  PokemonService,
])
void main() {}
