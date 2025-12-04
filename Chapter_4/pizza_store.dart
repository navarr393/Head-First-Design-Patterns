class Pizza {
  String type = "";
}

class PizzaStore {

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
