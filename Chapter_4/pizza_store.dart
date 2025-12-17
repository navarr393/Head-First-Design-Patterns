abstract class Pizza { // any abstract class needs to extended by subclasses, and cannot be instantiated directly
  String type = "";

  String prepare() => 'Preparing your pizza...';
  String bake() => 'Baking your pizza..';
  String cut() => 'Cutting your pizza...';
  String box() => 'Boxing your pizza...';

}

abstract class PizzaStore {
  String name = '';
  String dough = '';
  String sauce = '';
  List<String> toppings = [];
  late SimplePizzaFactory factory;

  // constructor 
  PizzaStore(SimplePizzaFactory factory) {
    this.factory = factory;
  }

  void prepare() {
    print('Preparing $name');
    print('Tossing dough...');
    print('Adding sauce...');
    print('Adding toppings...');
    for (String topping in toppings) {
      print(topping);
    }
  }

  void bake() {
    print('Bake for 25 minutes at 350');
  }

  void cut() {
    print('Cutting the pizza into diagonal pieces');
  }

  void box() {
    print('Place pizza into official pizza store box');
  }

  String getName() {
    return name;
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
  // must pass an argument since PizzaStore takes one, pass the same type
  NYPizzaStore(SimplePizzaFactory factory) : super(factory);

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
  NYStyleCheesePizza() {
    String name = 'NY Style Sauce and Cheese Pizza';
    String dough = 'Thin Crust Dough';
    String sauce = 'Marinara Sauce';

    toppings.add('Grated Reggiano Cheese');
  }
}

class NYStylePepperoniPizza extends Pizza {

}

class NYStyleClamPizza extends Pizza {

}

class NYStyleVeggiePizza extends Pizza {

}

class ChicagoStylePizzaStore extends PizzaStore {
  ChicagoStylePizzaStore(SimplePizzaFactory factory) : super(factory);

  Pizza createPizza(String type) {
    if (type == 'cheese') {
      return ChicagoStyleCheesePizza();
    } else if (type == 'peperoni') {
      return ChicagoStylePeperoniPizza();
    } else if (type == 'clam') {
      return ChicagoStyleClamPizza();
    } else if (type == 'veggie') {
      return ChicagoStyleVeggiePizza();
    }
    throw ArgumentError('Unknown pizza style: $type');
  }
}

class ChicagoStyleCheesePizza extends Pizza {

}

class ChicagoStylePeperoniPizza extends Pizza {

}

class ChicagoStyleClamPizza extends Pizza {

}

class ChicagoStyleVeggiePizza extends Pizza {

}

class CaliforniaStylePizzaStore extends PizzaStore {
  CaliforniaStylePizzaStore(SimplePizzaFactory factory) : super(factory);
  Pizza createPizza(String type) {
    if (type == 'cheese') {
      return CaliforniaStyleCheesePizza();
    } else if (type == 'peperoni') {
      return CaliforniaStylePeperoniPizza();
    } else if (type == 'clam') {
      return CaliforniaStyleClamPizza();
    } else if (type == 'veggie') {
      return CaliforniaStyleVeggiePizza();
    }
    throw ArgumentError('Unknown Pizza type: $type');
  }
}

class CaliforniaStyleCheesePizza extends Pizza {

}

class CaliforniaStylePeperoniPizza extends Pizza {

}

class CaliforniaStyleClamPizza extends Pizza {

}

class CaliforniaStyleVeggiePizza extends Pizza {

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
