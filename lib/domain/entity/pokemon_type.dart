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

  int get colorCode {
    switch (this) {
      case PokemonType.Normal:
        return 0xFF8E979F;
      case PokemonType.Fighting:
        return 0xFFCA4069;
      case PokemonType.Flying:
        return 0xFF8FA8DD;
      case PokemonType.Poison:
        return 0xFFA064C3;
      case PokemonType.Ground:
        return 0xFFD27546;
      case PokemonType.Rock:
        return 0xFFC3B589;
      case PokemonType.Bug:
        return 0xFF8CBC2B;
      case PokemonType.Ghost:
        return 0xFF5165A5;
      case PokemonType.Steel:
        return 0xFF508397;
      case PokemonType.Fire:
        return 0xFFFB9B54;
      case PokemonType.Water:
        return 0xFF5090D4;
      case PokemonType.Grass:
        return 0xFF5DB351;
      case PokemonType.Electric:
        return 0xFFEECD3A;
      case PokemonType.Psychic:
        return 0xFFF26C72;
      case PokemonType.Ice:
        return 0xFF6EC7B9;
      case PokemonType.Dragon:
        return 0xFF0B65BB;
      case PokemonType.Dark:
        return 0xFF5A5365;
      case PokemonType.Fairy:
        return 0xFFE889DF;
    }
  }
}
