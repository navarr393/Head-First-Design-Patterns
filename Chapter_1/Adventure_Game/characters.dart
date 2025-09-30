import 'character.dart';
import 'weapon_behavior.dart';

class King extends Character {
  King(): super(weaponBehavior: SwordBehavior());

  @override
  void fight() => weaponBehavior.useWeapon();
}

class Queen extends Character {
  Queen() : super(weaponBehavior: BowAndArrowBehavior());

  @override
  void fight() => weaponBehavior.useWeapon();
}

class Troll extends Character {
  Troll() : super(weaponBehavior: AxeBehavior());

  @override
  void fight() => weaponBehavior.useWeapon();
}

class Knight extends Character {
  Knight() : super(weaponBehavior: KnifeBehavior());

  @override
  void fight() => weaponBehavior.useWeapon();
}