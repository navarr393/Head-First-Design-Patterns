// run the simulator 
import 'characters.dart';
import 'weapon_behavior.dart';

void main() {
  final character = King();
  character.fight();
  // change to bow and arrow at runtime
  character.setWeapon(KnifeBehavior());
  character.fight();
  //change to aze
  character.setWeapon(AxeBehavior());
  character.fight();

  // Queen
  final queen = Queen();
  queen.fight();
  queen.setWeapon(SwordBehavior());
  queen.fight();
}
