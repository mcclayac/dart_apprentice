



void nullOperator() {


  print('Null Operator');
  print("avalue ?? 'ifNull'");
  String? aName1;
  String? aName2 = 'Maxine';
  String? aName3 = 'Kristin';
  print('String? aName1;');
  print("String? aName2 = 'Maxine';");
  print("String? aName3 = 'Kristin';");

  final text1 = aName1 ?? 'none1';
  final text2 = aName2 ?? 'none2';
  final text3 = aName3 ?? 'none3';

  print("aName1 = aName1 ?? 'none1' = $text1");
  print("aName2 = aName2 ?? 'none2' = $text2");
  print("aName3 = aName3 ?? 'none3' = $text3");

  String textString1 = aName1 ?? 'none1';
  String textString2 = aName2 ?? 'none2';
  String textString3 = aName3 ?? 'none3';

  print("String textString1 = aName1 ?? 'none1'; =$textString1");
  print("String textString2 = aName2 ?? 'none2'; =$textString2");
  print("String textString3 = aName3 ?? 'none3'; =$textString3");
}

void main() {

  nullOperator();
}
