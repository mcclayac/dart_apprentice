


String funcOptionalParameters(String firstName,String lastName, [String? title]) {
  if (title != null) {
    return '$title, $firstName $lastName';
  } else {
    return '$firstName $lastName';
  }
}  // end void funcOptionalParameters(String firstName,String lastName, [String title])

bool funcOptionalParametersDefaulyValues(int value, [int min = 0, int max = 10]) {
  bool returnValue;
  returnValue = (value >= min && value <= max);
  // if (value >= min && value <= max) {
  //   returnValue = true;
  // } else {
  //   returnValue = false;
  // }
  print('\nreturnValue = (value >= min && value <= max) = $returnValue');
  return returnValue;
}

bool funcOptionalParametersnamedPPerameters(int value, {int min = 0, int max = 10}) {
  bool returnValue;
  returnValue = (value >= min && value <= max);
  // if (value >= min && value <= max) {
  //   returnValue = true;
  // } else {
  //   returnValue = false;
  // }
  print('\nreturnValue = (value >= min && value <= max) = $returnValue');
  return returnValue;
}

bool funcRequiredNamedParameters({required int value, int min = 0, int max = 10}) {
  bool returnValue;
  returnValue = (value >= min && value <= max);
  // if (value >= min && value <= max) {
  //   returnValue = true;
  // } else {
  //   returnValue = false;
  // }
  print('\nreturnValue = (value >= min && value <= max) = $returnValue');
  return returnValue;
}

void main() {

  print('Function Optional Parameter');
  print(funcOptionalParameters('Tony', 'McClay'));
  print(funcOptionalParameters('Tony', 'McClay', 'Professor'));

  print('\nFunction Optional Parameter with default values');
  print('funcOptionalParametersDefaulyValues(6) = ${funcOptionalParametersDefaulyValues(6)}');
  print('funcOptionalParametersDefaulyValues(-1) = ${funcOptionalParametersDefaulyValues(-1)}');
  print('funcOptionalParametersDefaulyValues(12) = ${funcOptionalParametersDefaulyValues(12)}');
  print('funcOptionalParametersDefaulyValues(12, 0, 15) = ${funcOptionalParametersDefaulyValues(12, 0, 15)}');

  print('\nFunction with named perameters');
  print('funcOptionalParametersnamedPPerameters(5,min: 0, max: 7) = ${funcOptionalParametersnamedPPerameters(5,min: 0, max: 7)}');
  print('funcOptionalParametersnamedPPerameters(-1,min: 0, max: 7) = ${funcOptionalParametersnamedPPerameters(-1,min: 0, max: 7)}');
  print('funcOptionalParametersnamedPPerameters(12,min: 0, max: 7) = ${funcOptionalParametersnamedPPerameters(12,min: 0, max: 7)}');

  print('\nFunction with named perameters');
  print('funcOptionalParametersnamedPPerameters(5,min: 0, max: 7) = ${funcOptionalParametersnamedPPerameters(5,min: 0, max: 7)}');
  print('funcOptionalParametersnamedPPerameters(-1,min: 0, max: 7) = ${funcOptionalParametersnamedPPerameters(-1,min: 0, max: 7)}');
  print('funcOptionalParametersnamedPPerameters(12,min: 0, max: 7) = ${funcOptionalParametersnamedPPerameters(12,min: 0, max: 7)}');

  print('\nFunction with required named perameters');
  print('funcRequiredNamedParameters(value: 4) =${funcRequiredNamedParameters(value: 4)}');

  

}