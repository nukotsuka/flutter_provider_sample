import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_provider_sample/domain/entity/index.dart';
import 'package:flutter_provider_sample/ui/atom/index.dart';

class PokemonListItem extends StatelessWidget {
  // MARK: - Const

  static const double _cardRadius = 16;

  // MARK: - Variables

  final Pokemon pokemon;

  // MARK: - Constructor

  const PokemonListItem({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  // MARK: - Views

  CachedNetworkImage _spriteImage() {
    return CachedNetworkImage(
      imageUrl: pokemon.spriteURL,
      fit: BoxFit.cover,
    );
  }

  // MARK: - Layout

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
      decoration: BoxDecoration(
        color: AppColor.mainBackground,
        borderRadius: BorderRadius.circular(_cardRadius),
        boxShadow: [AppShadow.card],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _spriteImage(),
        ],
      ),
    );
  }
}
