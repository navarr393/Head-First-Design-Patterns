import 'dart:developer';

abstract class WeatherData {
  double getTemperature();
  double getHumidity();
  double getPressure();

  void measuremenetsChanged() {
    // TODO: This method gets called whenever the measurements have been updated
    double temp = getTemperature();
    double humidity = getHumidity();
    double pressure = getPressure();

    // TODO: implement and call update functions
  }
}