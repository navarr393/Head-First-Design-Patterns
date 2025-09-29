// Duck base class (depends on interfaces, not concrete implementations)
import 'fly_behavior.dart';
import 'quack_behavior.dart';

abstract class Duck {
  FlyBehavior flyBehavior;
  QuackBehavior quackBehavior;

  Duck({
    required this.flyBehavior,
    required this.quackBehavior,
  });

  void display(); // each duck looks different

  void performFly() => flyBehavior.fly();
  void performQuack() => quackBehavior.quack();

  void swim() => print('All ducks float, even decoys!');

  // Change behavior at runtime
  void setFlyBehavior(FlyBehavior fb) {
    flyBehavior = fb;
  }

  void setQuackBehavior(QuackBehavior qb) {
    quackBehavior = qb;
  }
}
