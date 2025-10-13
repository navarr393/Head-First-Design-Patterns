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
    return _temperature;
  }

  double getHumidity() {
    return _humidity;
  }
  double getPressure() {
    return _pressure;
  }

  void measurementsChanged() {
    notifyObservers();
  }

  void setMeasurements(double temperature, double humidity, double pressure) {
    this._temperature = temperature;
    this._humidity = humidity;
    this._pressure = pressure;
    measurementsChanged();
  }
}

abstract class Observer {
  void update(double temp, double humidity, double pressure);
}

abstract class DisplayElement {
  void display();
}

class CurrentConditionsDisplay implements Observer, DisplayElement {
  double _temperature = 0;
  double _humidity = 0;
  late WeatherData _weatherData;

  // constructor 
  CurrentConditionsDisplay(WeatherData weatherData) {
    this._weatherData = weatherData;
    _weatherData.registerObserver(this);
  }
  @override
  void update(double temperature, double humidity, double pressure) {
    this._temperature = temperature;
    this._humidity = humidity;
    display();
  }
  @override
  void display() {
    print('Current conditions: $_temperature F degrees and $_humidity % humidity');
  }
}

void main() {
  WeatherData weatherData = WeatherData();

  CurrentConditionsDisplay currentConditionsDisplay = CurrentConditionsDisplay(weatherData);

  weatherData.setMeasurements(80, 65, 30.4);
  weatherData.setMeasurements(82, 70, 29.2);
  weatherData.setMeasurements(78, 90, 29.2);
}