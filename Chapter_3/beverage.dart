abstract class Beverage {
  String description = 'Unknown Beverage';

  String getDescription() => description;

  double cost(); // needs to be implemented in the subclasses

}

abstract class CondimentDecorator extends Beverage {
  late Beverage beverage;
  
  String getDescription() {
    return beverage.description;
  }
  
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

class Mocha extends CondimentDecorator {
  Mocha(Beverage beverage) {
    this.beverage = beverage;
  }

  String getDescription() {
    return beverage.getDescription() + ', Mocha'; // get the lastly saved description and add 'Mocha'
  }

  double cost() {
    return beverage.cost() + 0.20;
  }
}

class Soy extends CondimentDecorator {
  Soy(Beverage beverage) {
    this.beverage = beverage;
  }

  String getDescription() {
    return beverage.getDescription() + ', Soy';
  }

  double cost() {
    return beverage.cost() + 0.15;
  }
}

class Whip extends CondimentDecorator {
  Whip(Beverage beverage) {
    this.beverage = beverage;
  }

  String getDescription() {
    return beverage.getDescription() + ', Whip';
  }

  double cost() {
    return beverage.cost() + 0.10;
  }
}

class SteamedMilk extends CondimentDecorator {
  SteamedMilk(Beverage beverage) {
    this.beverage = beverage;
  }

  String getDescription() {
    return beverage.getDescription() + ', Steamed Milk';
  }

  double cost() {
    return beverage.cost() + 0.10;
  }
}

// Make the beverages and Decorate them
void main() {
  Beverage beverage = Espresso(); // create an Espresso

  print(beverage.getDescription() + ' \$' + beverage.cost().toString()); // 'Espresso $1.99'

  Beverage beverage2 = DarkRoast(); // create a Dark Roast
  beverage2 = Mocha(beverage2); // add Mocha by wrapping it around a Mocha Object
  beverage2 = Mocha(beverage2); // add double Mocha, wrap it again
  beverage2 = Whip(beverage2); // add Whip
  print(beverage2.getDescription() + ' \$' + beverage2.cost().toString());

  Beverage beverage3 = HouseBlend();
  beverage3 = Soy(beverage3); // add Soy
  beverage3 = Mocha(beverage3); // add mocha
  beverage3 = Whip(beverage3); // add whip
  print(beverage3.getDescription() + ' \$' + beverage3.cost().toString());


}