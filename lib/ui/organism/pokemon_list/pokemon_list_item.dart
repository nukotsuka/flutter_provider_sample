import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_provider_sample/domain/entity/index.dart';
import 'package:flutter_provider_sample/ui/atom/index.dart';

class PokemonListItem extends StatelessWidget {
  // MARK: - Const

  static const double _cardRadius = 16;
  static const double _stripeImageSize = 40;

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
      width: _stripeImageSize,
      height: _stripeImageSize,
    );
  }

  // MARK: - Layout

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColor.mainBackground,
        borderRadius: BorderRadius.circular(_cardRadius),
        boxShadow: [AppShadow.card],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _spriteImage(),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'No.${pokemon.paddedID}',
                style: AppTextStyle.medium(
                  fontSize: 12,
                  color: AppColor.subText,
                ),
              ),
              Text(
                pokemon.name.japanese,
                style: AppTextStyle.bold(fontSize: 14),
              ),
            ],
          ),
          const Spacer(),
          const Icon(
            Icons.keyboard_arrow_right_rounded,
            color: AppColor.subIcon,
          ),
        ],
      ),
    );
  }
}
