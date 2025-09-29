import 'fly_behavior.dart';
import 'quack_behavior.dart';
import 'duck.dart';

class ModelDuck extends Duck {
  // Constructor 
  ModelDuck() : super(flyBehavior: FlyNoWay(), quackBehavior: Quack());
  @override
  void display() => print("I am a model duck");
}
