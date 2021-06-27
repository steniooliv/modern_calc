class HomePageController {
  separatesFunctionIntoSmallerFunctions(text, op1, op2) {
    final onlyNumbers = RegExp('[0-9]');

    bool findOperator = false;
    bool keepLooking = true;

    while (keepLooking) {
      keepLooking = false;

      String operation = '';

      String operator = '';

      for (int i = 0; i < text.length; i++) {
        if ((text[i] == op1 || text[i] == op2) && !findOperator) {
          operation += text[i];
          keepLooking = true;
          findOperator = true;
          if (text[i] == op1) operator = op1;
          if (text[i] == op2) operator = op2;
        } else if (onlyNumbers.hasMatch(text[i])) {
          operation += text[i];

          if (findOperator &&
              ((i + 1 == text.length) || !onlyNumbers.hasMatch(text[i + 1]))) {
            text = text.replaceAll(
                operation, calculateString(operation, operator).toString());
            operation = '';
            findOperator = false;
            break;
          }
        } else {
          operation = "";
        }
      }
    }
    return text;
  }

  calculateString(text, op) {
    List<String> textArray = [];
    if (op == '*') {
      textArray = text.split(op);
      return int.parse(textArray[0]) * int.parse(textArray[1]);
    } else if (op == '/') {
      textArray = text.split(op);
      return int.parse(textArray[0]) / int.parse(textArray[1]);
    } else if (op == '+') {
      textArray = text.split(op);
      return int.parse(textArray[0]) + int.parse(textArray[1]);
    } else if (op == '-') {
      textArray = text.split(op);
      return int.parse(textArray[0]) - int.parse(textArray[1]);
    }
  }
}
