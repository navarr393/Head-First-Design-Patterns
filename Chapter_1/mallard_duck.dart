// Concrete ducks wire in default behaviors
import 'duck.dart';
import 'fly_behavior.dart';
import 'quack_behavior.dart';

class MallardDuck extends Duck {
  MallardDuck()
      : super(
          flyBehavior: FlyWithWings(),
          quackBehavior: Quack(),
        );

  @override
  void display() => print("I'm a real Mallard duck");
}