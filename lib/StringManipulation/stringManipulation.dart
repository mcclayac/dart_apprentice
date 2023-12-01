

void padding() {


  print('\nPadding');
  DateTime timeNow = DateTime.now();
  Duration duration = Duration(hours: 1, minutes: 32, seconds: 57);
  String timeNowHours = '${timeNow.hour}'.padLeft(2,'0');
  String timeNowMinutes = '${timeNow.minute}'.padLeft(2,'0');
  String timeNowSeconds = '${timeNow.second}'.padLeft(2,'0');
  String timeNowString = '$timeNowHours:$timeNowMinutes:$timeNowSeconds';
  print('DateTime timeNow = DateTime.now();');
  print('TimeNow = $timeNowString');

  print('\nDuration duration = Duration(hours: 1, minutes: 32, seconds: 57);');
  String durationNowHours = '${duration.inHours}'.padLeft(2,'0');
  String durationMinutes = '${duration.inMinutes % 60}'.padLeft(2,'0');
  String durationSeconds = '${duration.inSeconds % 60}'.padLeft(2,'0');
  String durationString = '$durationNowHours:$durationMinutes:$durationSeconds';
  print('Duration = $durationString');

}

void splittingAndJoining() {

  print('\nSplitting and Joining');
  String combinedString = 'McClay,Anthony,53,Markham,IL,USA';
  List<String> listFields = combinedString.split(',');
  print("String combinedString = 'McClay,Anthony,53,Markham,IL,USA';");
  print("listFields = combinedString.split(',') = $listFields");

  String joinedString = listFields.join('|');
  print("String joinedString = listFields.join('|'); = $joinedString");

}

void stringBuffer() {

  print('\nStringBuffer');
  StringBuffer stringBuffer = StringBuffer();
  stringBuffer..write('\nname: \n')
    ..write('Tony ')
    ..write('McClay \n')
    ..write('14425 Vincennes \n')
    ..write('Harvey, IL 60426');
  String stringName = stringBuffer.toString();
  print('StringBuffer stringBuffer = StringBuffer() = $stringName');

  StringBuffer numberBuffer = StringBuffer();
  print('\nNumberBuffer');
  for(int i = 1; i <= 1024; i*=2) {
    numberBuffer.write(i.toString());
    numberBuffer.write(' ');
  }
  String aStringBuffer = numberBuffer.toString();
  print('numberBuffer.toString() = $aStringBuffer');
}

void regularExpressions() {

  print('\nRegular Expressons');
  RegExp aCatRegExp = RegExp('cat');
  print("RegExp aCatRegExp = RegExp('cat');");
  print("aCatRegExp.hasMatch('concatenation') = ${aCatRegExp.hasMatch('concatenation')}");
  print("aCatRegExp.hasMatch('dog') = ${aCatRegExp.hasMatch('dog')}");
  print("aCatRegExp.hasMatch('cats') = ${aCatRegExp.hasMatch('cats')}");

  print('');
  print("'dog'.contains(aCatRegExp) = ${'dog'.contains(aCatRegExp)}");
  print("'cats'.contains(aCatRegExp) = ${'cats'.contains(aCatRegExp)}");
  print("'concatenation'.contains(aCatRegExp) = ${'concatenation'.contains(aCatRegExp)}");

  RegExp aSingleMatch = RegExp('c.t');
  print("\nRegExp aSingleMatch = RegExp('c.t');");
  print("aSingleMatch.hasMatch('cat') = ${aSingleMatch.hasMatch('cat')} ");
  print("aSingleMatch.hasMatch('cut') = ${aSingleMatch.hasMatch('cut')} ");
  print("aSingleMatch.hasMatch('cot') = ${aSingleMatch.hasMatch('cot')} ");
  print("aSingleMatch.hasMatch('ct') = ${aSingleMatch.hasMatch('ct')} ");

  RegExp aOptionalSingleMatch = RegExp('c?t');
  print("\nRegExp aOptionalSingleMatch = RegExp('c?t');");
  print("aOptionalSingleMatch.hasMatch('cat') = ${aOptionalSingleMatch.hasMatch('cat')} ");
  print("aOptionalSingleMatch.hasMatch('cut') = ${aOptionalSingleMatch.hasMatch('cut')} ");
  print("aOptionalSingleMatch.hasMatch('cot') = ${aOptionalSingleMatch.hasMatch('cot')} ");
  print("aOptionalSingleMatch.hasMatch('ct') = ${aOptionalSingleMatch.hasMatch('ct')} ");
  print("aOptionalSingleMatch.hasMatch('dog') = ${aOptionalSingleMatch.hasMatch('dog')} ");

  RegExp aOneOrMoreMatch = RegExp('wo+w');
  print("\nRegExp aOneOrMoreMatch = RegExp('wo+w');");
  print("aOneOrMoreMatch.hasMatch('ww') = ${aOneOrMoreMatch.hasMatch('ww')}");
  print("aOneOrMoreMatch.hasMatch('wow') = ${aOneOrMoreMatch.hasMatch('wow')}");
  print(
      "aOneOrMoreMatch.hasMatch('wooow') = ${aOneOrMoreMatch.hasMatch('wooow')}");
  print(
      "aOneOrMoreMatch.hasMatch('woooooooooow') = ${aOneOrMoreMatch.hasMatch('woooooooooow')}");

  RegExp aZeroOrMore = RegExp('wo*w');
  print("\nRegExp aZeroOrMore = RegExp('wo*w');");
  print("aZeroOrMore.hasMatch('ww') = ${aZeroOrMore.hasMatch('ww')}");
  print("aZeroOrMore.hasMatch('wow') = ${aZeroOrMore.hasMatch('wow')}");
  print("aZeroOrMore.hasMatch('wo') = ${aZeroOrMore.hasMatch('wo')}");
  print(
      "aZeroOrMore.hasMatch('wooow') = ${aZeroOrMore.hasMatch('wooow')}");
  print(
      "aZeroOrMore.hasMatch('woooooooooow') = ${aZeroOrMore.hasMatch('woooooooooow')}");

  RegExp aSetOfCharRegExp = RegExp('b[oa]t');
  print("\nRegExp aSetOfCharRegExp = RegExp('b[oa]t');");
  print("aSetOfCharRegExp.hasMatch('bat') = ${aSetOfCharRegExp.hasMatch('bat')}");
  print("aSetOfCharRegExp.hasMatch('bot') = ${aSetOfCharRegExp.hasMatch('bot')}");
  print("aSetOfCharRegExp.hasMatch('but') = ${aSetOfCharRegExp.hasMatch('but')}");
  print("aSetOfCharRegExp.hasMatch('boat') = ${aSetOfCharRegExp.hasMatch('boat')}");
  print("aSetOfCharRegExp.hasMatch('bt') = ${aSetOfCharRegExp.hasMatch('bt')}");

  RegExp zipPlus5RegExp = RegExp('[0-9][0-9][0-9][0-9][0-9]-[0-9][0-9][0-9][0-9][0-9]');
  RegExp zipRegExp = RegExp('[0-9][0-9][0-9][0-9][0-9]');
  print("\nRegExp zipPlus5RegExp = RegExp('[0-9][0-9][0-9][0-9][0-9]-[0-9][0-9][0-9][0-9][0-9]');");
  print("\nzipRegExp = RegExp('[0-9][0-9][0-9][0-9][0-9]'");
  print("zipPlus5RegExp.hasMatch('604288-12345') = ${zipPlus5RegExp.hasMatch('604288-12345')}");
  print("zipPlus5RegExp.hasMatch('604288') = ${zipPlus5RegExp.hasMatch('604288')}");
  print("zipPlus5RegExp.hasMatch('-12345') = ${zipPlus5RegExp.hasMatch('-12345')}");
  print("zipPlus5RegExp.hasMatch('2-2') = ${zipPlus5RegExp.hasMatch('2-2')}");
  print("zipRegExp.hasMatch('604288-12345') = ${zipRegExp.hasMatch('604288-12345')}");
  print("zipRegExp.hasMatch('604288') = ${zipRegExp.hasMatch('604288')}");
  print("zipRegExp.hasMatch('-12345') = ${zipRegExp.hasMatch('-12345')}");
  print("zipRegExp.hasMatch('2-2') = ${zipRegExp.hasMatch('2-2')}");
  String zipString = '60428-12345';
  if (zipPlus5RegExp.hasMatch(zipString) || zipRegExp.hasMatch(zipString)) {
    print('$zipString is valid');
  } else {
    print('$zipString is NOT valid');
  }
  zipString = '60428';
  if (zipPlus5RegExp.hasMatch(zipString) || zipRegExp.hasMatch(zipString)) {
    print('$zipString is valid');
  } else {
    print('$zipString is NOT valid');
  }
  zipString = '6042';
  if (zipPlus5RegExp.hasMatch(zipString) || zipRegExp.hasMatch(zipString)) {
    print('$zipString is valid');
  } else {
    print('$zipString is NOT valid');
  }
}

void namedFunction(Function anonymousFunction) {
  //anonymousFunction.
  () {
    print('anonymousFunction');
  };
}

void anonymousFunction() {

  print('\n\nAnonymous Functions');
  // var returnString = (int a, int b) {
  //   return "a*b = $a * $b = ${a*b}";
  // };
  // print(returnString);

  Function multiply = (int a, int b) {
    return a * b;
  };
  namedFunction(multiply);
  print('\nEnd Anonymous Functions');


}

void main() {

  padding();
  splittingAndJoining();
  stringBuffer();
  regularExpressions();
  anonymousFunction();
}