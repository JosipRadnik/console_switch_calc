import 'dart:io';

String promptText(String promptText) {
  print('${promptText}');
  var answer = stdin.readLineSync();
  return answer;
}

double promptDouble() {
  print('Enter a number: ');
  var myNumber = double.parse(stdin.readLineSync());
  return myNumber;
}

void main() {
  var num1 = promptDouble();
  var num2 = promptDouble();
  var operation = promptText('Enter an operation(+, -, /, *): ');

  switch (operation) {
    case '+':
      print(num1 + num2);
    break;
    case '-':
      print(num1 - num2);
    break;
    case '/':
      print(num1 / num2);
    break;
    case '*':
      print(num1 * num2);
    break;
    default: print('Invalid Operator.');
  }
}
