class CalculatorLogic {
  static String _num1 = "";
  static String _num2 = "";
  static String _operator = "";
  static double _result = 0.0;
  static bool _isOperated = false;

  static void setNum(String num) {
    if (!_isOperated) {
      if (num == "-") {
        if (_num1.isEmpty) {
          _num1 += "${num}0";
        } else if (_num1.isNotEmpty && _num1[0] == "-") {
          _num1 = _num1.replaceAll("-", "");
        } else if (_num1.isNotEmpty && _num1[0] != "-") {
          _num1 = num + _num1;
        }
      } else {
        _num1 += num;
      }
    } else {
      _num2 += num;
    }
  }

  static double getNum1() {
    return double.parse(_num1);
  }

  static double getNum2() {
    return double.parse(_num2);
  }

  static void setOperator(String op) {
    _operator = op;
  }

  static bool operate() {
    double num1 = double.parse(_num1);
    double num2 = double.parse(_num2);
    switch (_operator) {
      case "+":
        _result = num1 + num2;
        break;
      case "-":
        _result = num1 - num2;
        break;
      case "*":
        _result = num1 * num2;
        break;
      case "/":
        if (num2 == 0) {
          return false;
        } else {
          _result = num1 / num2;
        }
        break;
    }
    return true;
  }

  static double getResult() {
    return _result;
  }
}
