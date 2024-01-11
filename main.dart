void main(List<String> args) {
  final number = '23.4';
  final count = number.toDouble()! + 12.4;
  print(count);
}

extension on String {
  double? toDouble() {
    return double.tryParse(this);
  }
}
