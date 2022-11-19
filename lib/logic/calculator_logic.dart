/*
 * CalculatorLogic class defines the logics.
 * This class consists of four private static variables, five private static
 * methods, and eight public static methods. All fields and methods are static
 * because this class will only be utilized once. Some methods are private for
 * the purpose of this project; therefore, it may only make sense for this
 * project.
 * Note: Whenever the result is obtained, it will be assigned to the first
 *  number so that users can keep doing operations by entering the new operator
 *  and second number.
 */
class CalculatorLogic {
  static String _num1 = ""; // to hold the value of the first number
  static String _num2 = ""; // to hold the value of the second number
  static String _operator = ""; // to hold the value of the operator
  static String _result = ""; // to hold the value of the result

  // This private method is to set the value of _num1.
  // This method is private to restrict the changing of the value of _num1
  // directly from outside of the class.
  static void _setNum1(String num) {
    _num1 = num;
  }

  // This private method is to set the value of _num2.
  // This method is private to restrict the changing of the value of _num2
  // directly from outside of the class.
  static void _setNum2(String num) {
    _num2 = num;
  }

  // This private method is to access the value of _num1.
  // This method is private to restrict the accessing of _num1 directly from
  // outside of the class.
  static String _getNum1() {
    return _num1;
  }

  // This private method is to access the value of _num2.
  // This method is private to restrict the accessing of _num2 directly from
  // outside of the class.
  static String _getNum2() {
    return _num2;
  }

  // This private method is to access the value of operator.
  // This method is private to restrict the accessing of operator directly from
  // outside of the class.
  static String _getOperator() {
    return _operator;
  }

  // This method is to change the value of the _num1 and _num1.
  static void setNum(String num) {
    // According to the structure of this project, this method will only change
    // the value of _num1 when the value of operator is empty. The logic behind
    // this is that until the user presses the operator buttons, any number the
    // user enters refer to the first number.
    if (_operator.isEmpty) {
      if (num == "-") {
        if (_num1.isEmpty) {
          // if the value of _num1 is empty, this value means the number will be
          // negative; therefore, it will add negative sign.
          _num1 += num;
        } else if (_num1.isNotEmpty && _num1[0] == "-") {
          // if there is already a value for _num1, and it is a negative number,
          // change it to positive value.
          _num1 = _num1.replaceAll("-", "");
        } else if (_num1.isNotEmpty && _num1[0] != "-") {
          // if there is already a value for _num1, and it is a positive number,
          // change it to negative value.
          _num1 = num + _num1;
        }
      } else if (num == "c") {
        // to clear the last digit entered.
        _num1 = _num1.substring(0, _num1.length - 1);
      } else {
        // normally it will concatenate the value.
        _num1 += num;
      }
    } else {
      // Once the user presses the operator button, it means that the user
      // finishes entering the first number, and it also means that the user
      // is ready for the second number.
      if (num == "c") {
        // to clear the last digit entered.
        _num2 = _num2.substring(0, _num2.length - 1);
      } else {
        if (num != "-") {
          _num2 += num;
        }
      }
    }
  }

  // This method is to set the value of the _operator variable.
  static void setOperator(String op) {
    _operator = op;
  }

  // This method actually do the computation.
  // This method returns a boolean value to indicate whether the operation is
  // done successfully.
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
      default:
        break;
    }
    return true;
  }

  // This method is to square the value.
  static void square() {
    _result = (double.parse(_getNum1()) * double.parse(_getNum1())).toString();
    _setNum1(getResult());
  }

  // This method invoke the operate method.
  static void equalOperator() {
    if (operate()) {
      setOperator("");
      _setNum1(getResult());
      _setNum2("");
    } else {
      // For this project, the operate() method will only return false if the
      // denominator is zero in division operation.
      _result = "Denominator cannot be zero.";
    }
  }

  // To clear all the values entered.
  static void allClear() {
    _setNum1("");
    setOperator("");
    _setNum2("");
  }

  // This method return the result.
  static String getResult() {
    return _result;
  }

  // This method return a string that can be used to display.
  static String getString() {
    return "${_getNum1()} ${_getOperator()} ${_getNum2()}";
  }
}
