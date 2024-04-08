import 'dart:io';

void main() {
  userInput();
}

void userInput() {
  print('Enter 1st number: ');
  int num1 = int.parse(stdin.readLineSync()!);

  print('Enter 2nd number: ');
  int num2 = int.parse(stdin.readLineSync()!);

  print('Select the Operator\n'
      '+ for Sum\n'
      '- for Subtraction\n'
      'x for Multiplication\n'
      '/ for Division');

  String operator = stdin.readLineSync()!;

  if (operator == '+') {
    int additionResult = addition(num1, num2);
    print('$num1 + $num2 = $additionResult');
  } else if (operator == '-') {
    int subtractionResult = subtraction(num1, num2);
    print('$num1 - $num2 = $subtractionResult');
  } else if (operator == 'x') {
    int multiplicationResult = multiplication(num1, num2);
    print('$num1 x $num2 = $multiplicationResult');
  } else if (operator == '/') {
    double divisionResult = division(num1, num2);
    print('$num1 / $num2 = $divisionResult');
  } else {
    print('Wrong Operator Selected');
  }
}

int addition(int num1, int num2) {
  return num1 + num2;
}

int subtraction(int num1, int num2) {
  return num1 - num2;
}

int multiplication(int num1, int num2) {
  return num1 * num2;
}

double division(int num1, int num2) {
  return num1 / num2;
}
