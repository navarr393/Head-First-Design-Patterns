abstract class Pizza { // any abstract class needs to extended by subclasses, and cannot be instantiated directly
  String type = "";

  String prepare() => 'Preparing your pizza...';
  String bake() => 'Baking your pizza..';
  String cut() => 'Cutting your pizza...';
  String box() => 'Boxing your pizza...';

}

abstract class PizzaStore {
  late SimplePizzaFactory factory;

  // constructor 
  PizzaStore(SimplePizzaFactory factory) {
    this.factory = factory;
  }

  Pizza orderPizza(String type) {
    late Pizza pizza;

    pizza = createPizza(type);
    pizza.prepare();
    pizza.bake();
    pizza.cut();
    pizza.box();

    return pizza;
  }

  Pizza createPizza(String type); // now other franchises can create their own styles NY, Cali, Chicago etc

}

// create own Pizza stores
class NYPizzaStore extends PizzaStore {

  Pizza createPizza(String type) {
    if (type == 'cheese') {
      return NYStyleCheesePizza();
    } else if (type == 'pepperoni') {
      return NYStylePepperoniPizza();
    } else if (type == 'clam') {
      return NYStyleClamPizza();
    } else if (type == 'veggie') {
      return NYStyleVeggiePizza();
    }
    throw ArgumentError('Unknown pizza style: $type');
  }
}

class NYStyleCheesePizza extends Pizza {

}

class NYStylePepperoniPizza extends Pizza {

}

class NYStyleClamPizza extends Pizza {

}

class NYStyleVeggiePizza extends Pizza {

}

class CheesePizza extends Pizza {

}

class PepperoniPizza extends Pizza {

}

class ClamPizza extends Pizza {

}

class VeggiePizza extends Pizza {

}

class SimplePizzaFactory {

  Pizza createPizza(String type) {
    late Pizza pizza;

    if (type == 'cheese') {
      pizza = CheesePizza();
    } else if (type == 'pepperoni') {
      pizza = PepperoniPizza();
    } else if (type == 'clam') {
      pizza = ClamPizza();
    } else if (type == 'veggie') {
      pizza = VeggiePizza();
    }
    return pizza;
  }
}
