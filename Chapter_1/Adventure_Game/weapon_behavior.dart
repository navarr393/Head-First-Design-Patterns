abstract class WeaponBehavior {
  void useWeapon();
}

class KnifeBehavior implements WeaponBehavior {
  @override 
  void useWeapon() => print('I can cut you with my knife!');
}

class BowAndArrowBehavior implements WeaponBehavior {
  @override
  void useWeapon() => print('Aiming with my bow and arrow!');
}

class AxeBehavior implements WeaponBehavior {
  @override
  void useWeapon() => print('I am swinging my axe!');
}

class SwordBehavior implements WeaponBehavior {
  @override 
  void useWeapon() => print('I am using my sword on you!');
}