

void casting() {
  double aDouble = 3.12;
  // final someNum = aDouble as int;
  final someNum = aDouble.toInt();
  print('someNum = $someNum');

  num aNum = 4.5;
  // final someNum2 = aNum as int;
  final someInt2 = aNum.toInt();
  print('someInt2 = $someInt2');
}

void objectsVarsDynamic() {

  // Not allowed
  // var aVar = 43;
  // aVar = 'Tony';

  print('\nthrowing Type Safty out the door');
  dynamic aDynamic = 43;
  aDynamic = 'Tony';  // allowed
  print('aDynamic = $aDynamic');
  // int value = aDynamic * 3;

  Object? aObject = 43;
  aObject = 'Tony';  // allowed
  print('aObject = $aObject');

}

void functionUTF() {

  //  strings represented at UTP-16
  print('\nPrinting utp-16 <String>.codeUnits');
  String helloString = 'Greetings, ';
  print('Greetings = ${helloString.codeUnits}');

  const macron = 'Ā';
  const ogonek = 'ą';
  const stroke = 'ƀ';
  const topbar = 'ƌ';
  const schwa = 'Ə';
  const gamma = 'Ɣ';

  List<String> listUnicode = [macron, ogonek, stroke, topbar, schwa, gamma];

  print('listUnicode = $listUnicode');


}

void main() {
  casting();
  objectsVarsDynamic();
  functionUTF();


}

