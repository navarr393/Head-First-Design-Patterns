import 'weather_data.dart';

class HeatIndexDisplay implements Observer, DisplayElement {
  double _temperature = 0.0;
  double _humidity = 0.0;
  double _heatIndex = 0.0;
  late WeatherData _weatherData;

  // constructor 
  HeatIndexDisplay(WeatherData weatherData) {
    this._weatherData = weatherData;
    _weatherData.registerObserver(this);
  }

  double calculateHeatIndex(double temperature, double humidity) {
    double c1 = -42.379;
    double c2 = 2.04901523;
    double c3 = 10.14333127;
    double c4 = -0.22475541;
    double c5 = -6.83783e-3;
    double c6 = -5.481717e-2;
    double c7 = 1.22874e-3;
    double c8 = 8.5282e-4;
    double c9 = -1.99e-6;

    double t = temperature;
    double h = humidity;

    return c1 + c2*t + c3*h + c4*t*h + c5*t*t + c6*h*h + c7*t*t*h + c8*t*h*h + c9*t*t*h*h;
  }

  @override
  void update(double temperature, double humidity, double pressure) {
    // calculate heat index here
    this._temperature = temperature;
    this._humidity = humidity;

    _heatIndex = calculateHeatIndex(this._temperature, this._humidity);
    display();
  }

  @override
  void display() {
    // update display
    print("Heat index is: $_heatIndex");
  } 
}