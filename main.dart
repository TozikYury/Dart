void main(List<String> args) {
  var numberOne = 12;
  var numberTwo = 'sdhk';
  try {
    var count = numberOne / numberTwo.toDouble();
    print(count.toStringAsFixed(3));
  } on Exception catch (e) {
    print('Error: $e');
  } finally {
    print('Close');
  }
}

extension on String {
  double toDouble() {
    return double.parse(this);
  }
}
