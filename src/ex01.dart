import 'dart:io';
import 'dart:math';

void main() {
  double? a;
  double? b;
  double? c;
  String? input;
  String? inputb;
  String? inputc;
  do {
    print('nhap a :');
    input = stdin.readLineSync();
    if (input != null) {
      a = double.tryParse(input) ?? 0;
    }
    print('nhap b :');
    inputb = stdin.readLineSync();
    if (inputb != null) {
      b = double.tryParse(inputb) ?? null;
    }
    print('nhap c : ');
    inputc = stdin.readLineSync();
    if (inputc != null ) {
      c = double.tryParse(inputc ) ?? null;
    }

    if (a == 0 ) {
      print('He so a phai khac 0 va phai la kieu so, vui long nhap lai');
    }
    if (b == null) {
      print('He so b phai la kieu so, vui long nhap lai');
    }
    if (c == null) {
      print('He so c phai la kieu so, vui long nhap lai');
    }
  } while (a == 0 || b == null || c == null);
  double delta;
  delta = b * b - (4 * (a ?? 0) * c);
  print('delta là : $delta');
}
