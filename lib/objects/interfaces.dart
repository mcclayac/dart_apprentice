

abstract class DataRepository {

  factory DataRepository() => FakeWebServer();
  double? fetchTemperature(String city);
}

class FakeWebServer implements DataRepository {
  @override
  double? fetchTemperature(String city) {
    // TODO: implement fetchTemperature
    return 43.5;
  }

}



void createClasses() {

  String city = 'Chicago';
  DataRepository aRepository = FakeWebServer();
  double? aTemperature = aRepository.fetchTemperature(city);
  print('The Temperature of $city is $aTemperature');

  DataRepository aRepository2 = DataRepository();
  aTemperature = aRepository2.fetchTemperature(city);
  print('The Temperature of $city is $aTemperature');

}

void main() {

  createClasses();
}