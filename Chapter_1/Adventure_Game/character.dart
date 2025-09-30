import 'weapon_behavior.dart';

abstract class Character {
  WeaponBehavior weaponBehavior;
  
  // constructor 
  Character({required this.weaponBehavior});

  void fight() => weaponBehavior.useWeapon();

  // setter for weapom
  void setWeapon(WeaponBehavior w) {
    this.weaponBehavior = w;
  }
}

