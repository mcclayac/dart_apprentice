

extension on String {
  String get encoded => _code(1);
  String get decoded => _code(-1);

  String _code(int step) {
    StringBuffer sb = StringBuffer();
    for ( final codePoint in runes) {
      sb.writeCharCode(codePoint + step);
    }
    return sb.toString();
  }
}


void main() {

  String name = 'Tony McClay';
  print("String name = 'Tony McClay'");
  String secret = name.encoded;
  print('Secret = $secret');
  String decodedString = secret.decoded;
  print('decoded = $decodedString');
}