// enum to choose the size of beverage
enum Size {TALL, GRANDE, VENTI} // enums are top level in dart, not a class like Java we cant define inside Beverage

abstract class Beverage {
  Size size = Size.TALL;
  String description = 'Unknown Beverage';

  String getDescription() => description;

  double cost(); // needs to be implemented in the subclasses

  double _applySizedAdjustment(double baseAmount) {
    switch (getSize()) {
      case (Size.TALL):
        return baseAmount - 0.05;
      case (Size.GRANDE):
        return baseAmount;
      case (Size.VENTI):
        return baseAmount + 0.05;
    }
  }

  void setSize(Size size) { // takes in a Size 
    this.size = size;
  }

  Size getSize() {  // return the size of the beverage
    return this.size;
  }

}

abstract class CondimentDecorator extends Beverage {
  late Beverage beverage;
  
  String getDescription() {
    return beverage.getDescription();
  }

  Size getSize() {
    return beverage.getSize();
  }
  void setSize(Size size) {
    beverage.setSize(size); // send the size to the beverage wheather is called at the beginnig or end
  }
}

class Espresso extends Beverage {

  Espresso() {
    description = 'Espresso';
  }

  double cost() => _applySizedAdjustment(1.99);
}

class HouseBlend extends Beverage {
  HouseBlend() {
    description = 'House Blend Coffee';
  }

  double cost() => _applySizedAdjustment(0.89);
}

class DarkRoast extends Beverage {

  DarkRoast() {
    description = 'Dark Roast Coffee';
  }

  double cost() => _applySizedAdjustment(0.99);
}

class Decaf extends Beverage {
  Decaf() {
    description = 'Decaf Coffee';
  }

  double cost() => _applySizedAdjustment(1.05);
}

class Mocha extends CondimentDecorator {
  Mocha(Beverage beverage) {
    this.beverage = beverage;
  }

  String getDescription() {
    return beverage.getDescription() + ', Mocha'; // get the lastly saved description and add 'Mocha'
  }

  Size getSize() {
    return beverage.getSize();
  }

  double cost() {
    return beverage.cost() + _applySizedAdjustment(0.20);
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
    return beverage.cost() + _applySizedAdjustment(0.15);
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
    return beverage.cost() + _applySizedAdjustment(0.10);
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
    return beverage.cost() + _applySizedAdjustment(0.10);
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

  Beverage  beverage4 = HouseBlend();
  beverage4.setSize(Size.VENTI);
  print(beverage4.cost());
  beverage4 = Mocha(beverage4);
  beverage4 = Mocha(beverage4);
  print(beverage4.cost());

  Beverage  beverage5 = HouseBlend();
  print(beverage5.cost());
  beverage5 = Mocha(beverage5);
  beverage5 = Mocha(beverage5);
  beverage5.setSize(Size.VENTI);
  print(beverage5.cost());


}