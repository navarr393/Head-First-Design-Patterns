abstract class Beverage {
  String description = 'Unknown Beverage';

  String getDescription() => description;

  double cost(); // needs to be implemented in the subclasses

}

abstract class CondimentDecorator extends Beverage {
  late Beverage beverage;

  @override
  String getDescription();
}

class Espresso extends Beverage {
  Espresso() {
    description = 'Espresso';
  }

  double cost() => 1.99;
}

class HouseBlend extends Beverage {
  HouseBlend() {
    description = 'House Blend Coffee';
  }

  double cost() => 0.89;
}

class DarkRoast extends Beverage {
  DarkRoast() {
    description = 'Dark Roast Coffee';
  }

  double cost() => 0.99;
}

class Decaf extends Beverage {
  Decaf() {
    description = 'Decaf Coffee';
  }

  double cost() => 1.05;
}