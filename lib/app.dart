import 'package:flutter/material.dart';
import 'package:flutter_provider_sample/app_config.dart';
import 'package:flutter_provider_sample/domain/http_client.dart';
import 'package:flutter_provider_sample/domain/index.dart';
import 'package:flutter_provider_sample/ui/index.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  // MARK: - Variables

  final HttpClient _client = const HttpClient(
    baseUrl: AppConfig.pokemonApiEndpoint,
  );
  late final _pokemonRepository = PokemonRepository(_client);

  // MARK: - Builder

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PokemonService>(
          create: (_) => PokemonService(_pokemonRepository),
        ),
      ],
      child: const MaterialApp(
        title: 'Pokemon',
        home: PokemonListPage(),
      ),
    );
  }
}
