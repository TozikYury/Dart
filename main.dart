class IncorrectValues {
  final String number;

  IncorrectValues(this.number);

  @override
  String toString() {
    return 'Не верные данные! $number';
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
    var count = div('23hjbu', '8');
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
  if (numOne == null) throw IncorrectValues(numberOne);
  if (numTwo == null) throw IncorrectValues(numberTwo);
  if (numTwo == 0) throw DivbyZero();
  return numOne / numTwo;
}
