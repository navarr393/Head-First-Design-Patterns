import 'mallard_duck.dart';
import 'model_duck.dart';
import 'duck.dart';
import 'fly_behavior.dart';

// Demo
void main() {
  final mallard = MallardDuck();
  mallard.display();
  mallard.performQuack(); // Quack
  mallard.performFly();   // I'm flying!!

  print('---');

  // do the same for model duck
  Duck model = ModelDuck();
  model.performFly(); // 'cant fly' set in constructor 
  model.setFlyBehavior(FlyRocketPowered()); // change at runtime / dinamically
                                            // Will display 'Im flying with a rocket'
  model.performFly();
}
