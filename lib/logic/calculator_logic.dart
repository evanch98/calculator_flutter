// TODO: Add comments

class CalculatorLogic {
  static String _num1 = "";
  static String _num2 = "";
  static String _operator = "";
  static String _result = "";

  static void _setNum1(String num) {
    _num1 = num;
  }

  static void _setNum2(String num) {
    _num2 = num;
  }

  static String _getNum1() {
    return _num1;
  }

  static String _getNum2() {
    return _num2;
  }

  static String _getOperator() {
    return _operator;
  }

  static void setNum(String num) {
    if (_operator.isEmpty) {
      if (num == "-") {
        if (_num1.isEmpty) {
          _num1 += "${num}0";
        } else if (_num1.isNotEmpty && _num1[0] == "-") {
          _num1 = _num1.replaceAll("-", "");
        } else if (_num1.isNotEmpty && _num1[0] != "-") {
          _num1 = num + _num1;
        }
      } else if (num == "c") {
        _num1 = _num1.substring(0, _num1.length - 1);
      } else {
        _num1 += num;
      }
    } else {
      if (num == "c") {
        _num2 = _num2.substring(0, _num2.length - 1);
      } else {
        _num2 += num;
      }
    }
  }

  static void setOperator(String op) {
    _operator = op;
  }

  static bool operate() {
    double num1 = double.parse(_num1);
    double num2 = double.parse(_num2);
    switch (_operator) {
      case "+":
        _result = (num1 + num2).toString();
        break;
      case "–":
        _result = (num1 - num2).toString();
        break;
      case "×":
        _result = (num1 * num2).toString();
        break;
      case "÷":
        if (num2 == 0) {
          return false;
        } else {
          _result = (num1 / num2).toStringAsFixed(4);
        }
        break;
    }
    return true;
  }

  static void square() {
    _result = (double.parse(_getNum1()) * double.parse(_getNum1())).toString();
    _setNum1(getResult());
  }

  static void equalOperator() {
    if (operate()) {
      setOperator("");
      _setNum1(getResult());
      _setNum2("");
    } else {
      _result = "Denominator cannot be zero.";
    }
  }

  static void allClear() {
    _setNum1("");
    setOperator("");
    _setNum2("");
  }

  static String getResult() {
    return _result;
  }

  static String getString() {
    return "${_getNum1()} ${_getOperator()} ${_getNum2()}";
  }
}
