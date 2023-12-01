

void anonymousFunction() {


}

void forEachLoops() {

  print('\nFor Each Loop');
  List<int> numbersList = [1, 2, 3, 4];
  print('List<int> numbersList = [1, 2, 3, 4];');

  print('\nnumbersList.forEach((element) { print(element * 3);});');
  numbersList.forEach((element) { print(element * 3);});

  print('\nnumbersList.forEach((element) => print(element * 3));');
  numbersList.forEach((element) => print(element * 3));

  print('\ntriple(int x) => print(x * 3);');
  print('numbersList.forEach(triple);');
  triple(int x) => print(x * 3);
  numbersList.forEach(triple);

  Map<String, String> flowerColor = {
    'rose':'red',
    'violet':'blue'
  };

  print('\nMap forEach');
  print('flowers = $flowerColor');
  print("flowerColor.forEach((flower, color) => print('flower: \$flower - color: \$color'));");
  flowerColor.forEach((flower, color) => print('flower: $flower - color: $color'));

}  // end void forEachLoops()

void oneCollectionToAnother() {

  print('\nvoid oneCollectionToAnother()');
  List<int> numberList = [2,4,6,8,10];
  print('List<int> numberList = [2,4,6,8,10];');

  List<int> loopedList = [];
  print('numberList.forEach((aNumber) => loopedList.add(aNumber * 3));');
  numberList.forEach((aNumber) => loopedList.add(aNumber * 3));

  print('looped List = $loopedList');

  print('\nList.map() to Iterable');
  List aAnonymousNumberList = numberList.map((e) => e * e).toList();
  print('List aAnonymousNumberList = numberList.map((e) => e * e).toList();');
  print('List = Iterable.toList()');
  print('aAnonymousNumberList = $aAnonymousNumberList');

}

void collectionFoldReduce() {

  print('\nvoid collectionFold()');
  List<int> ages = [22, 28, 27, 19, 18];
  print('ages = $ages');
  
  print('collecions.reduce');
  int value = ages.reduce((totalLength, element) => totalLength + element);
  print('int value = ages.reduce((totalLength, element) => totalLength + element);');
  print('value = $value');

  value = ages.fold(20, (totalValue, element) => totalValue + element);
  print('value = ages.fold(20, (totalValue, element) => totalValue + element);');
  print('value = $value');

  List<String> names = ["John", "Doe", "Jane", "Doe"];
  print('names = $names');
  int totalNames = names.fold(0, (totalLength, element) => totalLength + element.length);
  print('int totalNames = names.fold(0, (totalLength, element) => totalLength + element.length);');
  print('totalNames = $totalNames');
}

void filteringCollection() {

  print('\nvoid filteringCollection()');
  List<int> numberList = [1,2,3,4,5,6,7,8,9,10];
  print('numberList = $numberList');
  List<int> aBoolNumberList = numberList.where((element) => element.isOdd).toList();
  print('List<int> aBoolNumberList = numberList.where((element) => element.isOdd).toList();');
  print('aBoolNumberList.forEach((element) => print(element));');
  print('aBoolNumberList = $aBoolNumberList');
  aBoolNumberList.forEach((element) => print(element));
}

void sortingLists() {

  print('\nvoid sortingLists()');
  List<String> desertList = ['cookies','pie','cake','ice cream','brownies'];
  print('desertList = $desertList');
  desertList.sort();
  print('desertList.sort();');
  print('desertList = $desertList');
  print('\nsort by length');
  desertList.sort((d1,d2) => d1.length.compareTo(d2.length));
  print('desertList.sort((d1,d2) => d1.length.compareTo(d2.length));');
  print('desertList = $desertList');

}

void combiningHighOrderFunctions() {

  print('\nvoid combiningHighOrderFunctions()');
  List<String> desertList = ['cookies','pie','cake','ice cream','brownies'];
  print('desertList = $desertList');
  List<String> bigTallDeserts = desertList
    .where((aDesert) => aDesert.length > 5)
    .map((aDesert) => aDesert.toUpperCase())
    .toList();
  String conbinedIterationFunctions = """
  List<String> bigTallDeserts = desertList
    .where((aDesert) => aDesert.length > 5)
    .map((aDesert) => aDesert.toUpperCase())
    .toList();""";
  print('$conbinedIterationFunctions');
  print('bigTallDeserts = $bigTallDeserts');
}

class Button {
  Button({
    required this.title,
    required this.onPressed
  });

  final String title;
  final Function onPressed;
}

void callBackButton() {



  print('\nvoid callBackButton()');
  String buttonClassString = """
class Button {
  Button({
    required this.title,
    required this.onPressed
  });
  
  final String title;
  final Function onPressed;
}""";
  print(buttonClassString);

  Button myButton = Button(
      title: 'click me',
      onPressed: () {
        print('Clicked!');
      });
  String myButtonString = """\n
  Button myButton = Button(
      title: 'click me', 
      onPressed: () {
        print('Clicked!');
      });""";
  print(myButtonString);

  print('myButton.onPressed();');
  myButton.onPressed();
  print('myButton.onPressed.call();');
  myButton.onPressed.call();
}

class MyWidget {
  MyWidget({
    required this.onTouch
  });
  final void Function(double xPosition) onTouch;
}
void valueSetterCallBack() {

  print('\nvoid valueSetterCallBack()');

  String myWidgetString = """\n
class MyWidget {
  MyWidget({
    required this.onTouch
  });
  final void Function(double xPosition) onTouch;  
}""";
  print(myWidgetString);

  double y = 3.2;
  MyWidget aWidget = MyWidget(
      onTouch: (x) => print(x * 2),
  );

  String aWidgetString = """
  MyWidget aWidget = MyWidget(
      onTouch: (x) => print(x * 2),
  );""";
  print(aWidgetString);

  print(' y = $y');
  print('aWidget.onTouch(y);');
  aWidget.onTouch(y);
  print('aWidget.onTouch.call(y);');
  aWidget.onTouch.call(y);
}

class AnotherWidget {
  AnotherWidget({
    this.timeStamp
});
  final String Function()? timeStamp;
}
void valueGetterCallback() {

  print('\nvoid valueGetterCallback() ');
  String anotherWidgetString = """
class AnotherWidget {
  AnotherWidget({
    this.timestamp
});
  final String Function()? timestamp;
}""";
  print(anotherWidgetString);

  AnotherWidget aAnotherWidget = AnotherWidget(
    timeStamp: () => DateTime.now().toIso8601String(),
  );
  String aAnotherWidgetString = """
    AnotherWidget aAnotherWidget = AnotherWidget(
    timeStamp: () => DateTime.now().toIso8601String(),
  );""";
  print(aAnotherWidgetString);
  print('String? aTimeStampString = aAnotherWidget.timeStamp?.call();');
  String? aTimeStampString = aAnotherWidget.timeStamp?.call();
  print('aTimeStampString = $aTimeStampString');
  // print(aTimeStampString);
}

class StateManager {
  void handleButtonClick() {
    _counter++;
  }
  int _counter = 0;
  int get counter {
    return _counter;
  }
}

void tearOffs() {

  print('\nTear Offs');
  String stateManagerString = """
class StateManager {
  void handleButtonClick() {
    _counter++;
  }
  int _counter = 0;
  int get counter {
    return _counter;
  }
}""";
  print(stateManagerString);

  StateManager aStateManager = StateManager();
  print('StateManager aStateManager = StateManager();');

  Button aButton = Button(
      title: 'Click Me!',
      onPressed: aStateManager.handleButtonClick,
  );
  String aButtonString = """
  Button aButton = Button(
      title: 'Click Me!',
      onPressed: aStateManager.handleButtonClick,
  );""";
  print(aButtonString);


  aButton.onPressed.call();
  aButton.onPressed.call();
  aButton.onPressed.call();
  aButton.onPressed.call();
  print('aButton.onPressed.call();');
  print('aStateManager.counter = ${aStateManager.counter}');

  List<String> cities = ['Atlanta','Tampa','Macon','Miami','Cedar Falls','New York'];
  print('cities = $cities');
  print('\ncities.forEach((element) {print(element);});');
  cities.forEach((element) {print(element);});
  print('\ncities.forEach((element) => print(element));');
  cities.forEach((element) => print(element));
  print('\nTear Offs');
  print('cities.forEach(print);');
  cities.forEach(print);

}

typedef MapBuilder = Map<String, int> Function(List<int>);
class Gizmo {
  Gizmo({
    required this.builder,
  });
  final MapBuilder builder;
}

void renamingWithTypeDefs() {

  print('\nrenamingWithTypeDefs');

  String aTypeDeffAndClassString = """
typedef MapBuilder = Map<String, int> Function(List<int>);
class Gizmo {
  Gizmo({
    required this.builder,
  });
  final MapBuilder builder;
}""";
  print(aTypeDeffAndClassString);

  List<int> numberList = [2,4,6,8];
  Gizmo aGizmo = Gizmo(
      builder: (numberList) {return {
        'one':1,
        'two':2,
        'three':3};});

  Map<String,int> aGizmoMap = aGizmo.builder.call(numberList);
  print('AGizmoMap = $aGizmoMap');

}

void closureExample() {

  print('\nClosure Example');
  int counter = 0;
  final incrementCounter = () {
    counter++;
  };

  final incrementCounter2 = () => counter++;

  incrementCounter3() => counter++;

  incrementCounter();
  incrementCounter2();
  incrementCounter3();
  print('counter = $counter');

}

void main() {

  anonymousFunction();
  forEachLoops();
  oneCollectionToAnother();
  collectionFoldReduce();
  filteringCollection();
  sortingLists();
  combiningHighOrderFunctions();
  callBackButton();
  valueSetterCallBack();
  valueGetterCallback();
  tearOffs();
  renamingWithTypeDefs();
  closureExample();
}