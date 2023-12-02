

enum TrafficLight {
  green('go'),
  yellow('yield'),
  red('stop');

  const TrafficLight(this.message);
  final String message;
}

class Point {
  Point(this.x,this.y);
  final double x,y;

  // Operator Overload
  // + Operator
  Point operator +(Point otherPoint) {
    return Point(x + otherPoint.x, y + otherPoint.y);
  }

  // Operator Overload
  // - Operator
  Point operator -(Point otherPoint) {
    return Point(x - otherPoint.x, y - otherPoint.y);
  }

  @override
  String toString() => '$x : $y';
}


void main() {

  final TrafficLight color = TrafficLight.green;
  print(color.message);

  Point aPoint = Point(2.3, 4.3);
  print(aPoint);

  Point otherPoint = Point(5.6, 7.2);
  print(otherPoint);

  Point aAddPoint = aPoint + otherPoint;
  print(aAddPoint);

  Point aSubPoint = aAddPoint - otherPoint;
  print(aSubPoint);

}