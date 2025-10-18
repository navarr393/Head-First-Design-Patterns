// Subject 
// ignore_for_file: unused_local_variable

import 'current_conditions_display.dart';
import 'heat_index_display.dart';

abstract class Subject {
  void registerObserver(Observer o);
  void removeObserver(Observer o);
  void notifyObservers();
}

abstract class Observer {
  void update(double temp, double humidity, double pressure);
}

abstract class DisplayElement {
  void display();
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

void main() {
  WeatherData weatherData = WeatherData();

  // dart thinks these are not being used but they are through the observer pattern
  CurrentConditionsDisplay currentConditionsDisplay = CurrentConditionsDisplay(weatherData);
  HeatIndexDisplay heatIndexDisplay = HeatIndexDisplay(weatherData);

  weatherData.setMeasurements(100, 65, 30.4);
  weatherData.setMeasurements(82, 70, 29.2);
  weatherData.setMeasurements(78, 90, 29.2);
}