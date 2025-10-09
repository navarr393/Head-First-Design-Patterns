// Subject 
abstract class Subject {
  void registerObserver(Observer o);
  void removeObserver(Observer o);
  void notifyObservers();
}

class WeatherData implements Subject {
  List<Observer> _observers = [];
  double _temperature = 0;
  double _humidity = 0;
  double _pressure = 0;

  void registerObserver(Observer o) {
    _observers.add(o);
  }

  void removeObserver(Observer o) {
    _observers.remove(o);
  }

  void notifyObservers() {
    for (Observer o in _observers) {
      o.update(_temperature, _humidity, _pressure);
    }
  }

  double getTemperature() {
    return 0.0;
  }

  double getHumidity() {
    return 0.0;
  }
  double getPressure() {
    return 0.0;
  }

  void measuremenetsChanged() {
    notifyObservers();
  }

  void setMeasurements(double temperature, double humidity, double pressure) {
    this._temperature = temperature;
    this._humidity = humidity;
    this._pressure = pressure;
    measuremenetsChanged();
  }
}

abstract class Observer {
  void update(double temp, double humidity, double pressure);
}

abstract class DisplayElement {
  void display();
}