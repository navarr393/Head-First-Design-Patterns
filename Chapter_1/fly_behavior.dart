// Strategy interfaces (the "contracts")
abstract class FlyBehavior {
  void fly();
}

// Concrete strategies (different behaviors)
// the following fuctions have an IS-A relationship to FlyBehavior
class FlyWithWings implements FlyBehavior {
  @override
  void fly() => print("I'm flying!!");
}

class FlyNoWay implements FlyBehavior {
  @override
  void fly() => print("I can't fly.");
}

class FlyRocketPowered implements FlyBehavior {
  @override
  void fly() => print("I'm flying with a rocket!");
}