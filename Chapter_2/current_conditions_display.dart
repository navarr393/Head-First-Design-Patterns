import 'weather_data.dart';

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