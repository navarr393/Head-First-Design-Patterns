abstract class QuackBehavior {
  void quack(); // must be implemented since it is abstract
}

// classes have IS-A relationship to QuackBehavior
class Quack implements QuackBehavior {
  @override
  void quack() => print("Quack");
}

class Squeak implements QuackBehavior {
  @override
  void quack() => print("Squeak");
}

class MuteQuack implements QuackBehavior {
  @override
  void quack() => print("<< Silence >>");
}