class HomePageController {
  separatesFunctionIntoSmallerFunctions(text, op1, op2) {
    // RegExp para verificar se a string é um numero
    final onlyNumbers = RegExp('[0-9]');

    // Booleano para armazenar se já encontrou o operador.
    bool findOperator = false;
    // Booleano para verificar continua while continua.
    bool keepLooking = true;

    while (keepLooking) {
      // Seta o booleano falso. Necessário para caso não encontre nenhum dos
      // operadores o while não entre em loop.
      keepLooking = false;
      // Armazena a operacao numerica a ser executada.
      String operation = '';
      // Armazena qual o operador da função a ser executada.
      String operator = '';
      // Loop para percorrer a string
      for (int i = 0; i < text.length; i++) {
        // Verifica se a letra é um dos operadores pesquisados e se o primeiro operador já foi encontrado.
        // Caso positivo setamos a variável keepLooking como true.
        // Isso faz com que após a execução do for o loop se mantenha e continue a busca dos próximos operadores.
        // Nessa parte também setamos qual operador foi lido.
        // Setar que um operador foi encontrado é necessário para que possamos parar a busca pelo segundo número
        // no próximo operador.
        if ((text[i] == op1 || text[i] == op2) && !findOperator) {
          operation += text[i];
          keepLooking = true;
          findOperator = true;
          if (text[i] == op1) operator = op1;
          if (text[i] == op2) operator = op2;
          // Verifica se a letra é um número
        } else if (onlyNumbers.hasMatch(text[i])) {
          operation += text[i];
          // Caso já tenhamos encontrado o primeiro operador verificamos se a proxima letra tambem é um numero.
          // Caso positivo continuamos o For.
          // Caso negativo paramos a execusão do for é enviamos chamamos a funcao calculateString
          // A funcao calculateString pega uma excusão de apenas uma operacao e retonar o seu resutado.
          // Com isso fazemos um replace da operacão com o resultado.
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
