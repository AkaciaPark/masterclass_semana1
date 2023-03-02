/*
Na matemática, a sucessão de Fibonacci (ou sequência de Fibonacci), 
é uma sequência de números inteiros, começando normalmente por 0 e 1,
na qual cada termo subsequente corresponde à soma dos dois anteriores. 
A sequência recebeu o nome do matemático italiano Leonardo de Pisa, 
mais conhecido por Fibonacci, que descreveu, no ano de 1202, 
o crescimento de uma população de coelhos, a partir desta. 
Esta sequência já era, no entanto, conhecida na antiguidade.

Implemente a sequencia Fibonacci com funções recursivas usando o Dart.
*/

import 'dart:io';

int fibonacciSequence(int n) {
  String? userInput;
  int n;
  stdout.writeln('Digite o tamanho da sequência de Fibonacci desejada: ');
  userInput = stdin.readLineSync();

  n = int.parse(userInput!);

  for (int i = 0; i < n; i++) {
    print('O valor de Fibonacci é: $fibonacciSequence(i)');
  }

  if (n == 0 || n == 1) {
    return n;
  }
  return (fibonacciSequence(n - 1) + fibonacciSequence(n - 2));
}
