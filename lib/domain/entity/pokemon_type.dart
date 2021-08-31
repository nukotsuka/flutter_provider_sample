import 'package:flutter/foundation.dart';

enum PokemonType {
  Normal,
  Fighting,
  Flying,
  Poison,
  Ground,
  Rock,
  Bug,
  Ghost,
  Steel,
  Fire,
  Water,
  Grass,
  Electric,
  Psychic,
  Ice,
  Dragon,
  Dark,
  Fairy
}

extension PokemonTypeEx on PokemonType {
  String get enName {
    return describeEnum(this);
  }

  String get jpName {
    switch (this) {
      case PokemonType.Normal:
        return 'ノーマル';
      case PokemonType.Fighting:
        return 'かくとう';
      case PokemonType.Flying:
        return 'ひこう';
      case PokemonType.Poison:
        return 'どく';
      case PokemonType.Ground:
        return 'じめん';
      case PokemonType.Rock:
        return 'いわ';
      case PokemonType.Bug:
        return 'むし';
      case PokemonType.Ghost:
        return 'ゴースト';
      case PokemonType.Steel:
        return 'はがね';
      case PokemonType.Fire:
        return 'ほのお';
      case PokemonType.Water:
        return 'みず';
      case PokemonType.Grass:
        return 'くさ';
      case PokemonType.Electric:
        return 'でんき';
      case PokemonType.Psychic:
        return 'エスパー';
      case PokemonType.Ice:
        return 'こおり';
      case PokemonType.Dragon:
        return 'ドラゴン';
      case PokemonType.Dark:
        return 'あく';
      case PokemonType.Fairy:
        return 'フェアリー';
    }
  }
}
