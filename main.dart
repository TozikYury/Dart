class IncorrectValues {
  @override
  String toString() {
    return 'Не верные данные!';
  }
}

class DivbyZero {
  @override
  String toString() {
    return 'Делить на 0 нельзя!';
  }
}

void main(List<String> args) {
  try {
    var count = div('238727', '0');
    print(count.toStringAsFixed(3));
  } on IncorrectValues catch (e) {
    print(e);
  } on DivbyZero catch (e) {
    print(e);
  } catch (e) {
    print(e);
  }
}

double div(String numberOne, String numberTwo) {
  final numOne = int.tryParse(numberOne);
  final numTwo = int.tryParse(numberTwo);
  if (numOne == null || numTwo == null) throw IncorrectValues();
  if (numTwo == 0) throw DivbyZero();
  return numOne / numTwo;
}
