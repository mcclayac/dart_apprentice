

enum Weather {
  sunny,
  snowy,
  cloudy,
  rainy
}  // end enum Weather


void switchingOnEnum() {

  const weatherToday = Weather.cloudy;
  print("Today's weather is $weatherToday");
  // print('enum Weather = $Weather.');
  print('weatherToday\'s index is ${weatherToday.index}.');

  print('Switching on enums');
  switch (weatherToday) {
    case Weather.rainy:
      print('weather is rainy');
      break;
    case Weather.cloudy:
      print('weather is cloudy');
      break;
    case Weather.snowy:
      print('weather is snowy');
      break;
    case Weather.sunny:
      print('weather is sunny');
      break;
    default:
      print('No Weather today');
  }  // end switch (weatherToday
}  // end void switchingOnEnum()

void main() {

  switchingOnEnum();

}  // end main