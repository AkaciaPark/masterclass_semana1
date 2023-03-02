/*O (IMC) índice de massa corporal é baseado na altura e peso do individuo.
O calculo é representado por Dividir o peso pela Altura ao quadradro².

Cria uma função que realize o calculo de IMC.

peso -> double
altura -> double
função vai ter que me retornar um valor (double também)
*/

import 'dart:io';

void calculaImc() {
  final String? name;
  String? inputWeight;
  String? inputHeight;
  final double? weight;
  final double? height;
  final double calculaImc;

  stdout.writeln('Olá, digite o seu nome: ');
  name = stdin.readLineSync();

  do {
    stdout.write('\n$name, informe o seu peso: ');
    inputWeight = stdin.readLineSync();
  } while (inputWeight == null || inputWeight.trim().isEmpty);

  do {
    stdout.write('\nInforme a sua altura: ');
    inputHeight = stdin.readLineSync();
  } while (
      inputHeight == null || inputHeight.trim().isEmpty || inputHeight == '0');

  stdout.writeln(
      'O peso informado foi: ${inputWeight}kg e a altura informada foi: ${inputHeight}m.');

  weight = double.parse(inputWeight);
  height = double.parse(inputHeight);

  calculaImc = weight / (height * height);

  stdout.writeln('$name, o seu IMC é ${calculaImc.toStringAsFixed(1)}');

  // mostra o significado do IMC dependendo do seu valor:
  if (calculaImc < 18.5) {
    stdout.writeln('Com base no seu IMC, você está abaixo do peso ideal.');
  } else if (calculaImc >= 18.5 && calculaImc < 25) {
    stdout.writeln('Com base no seu IMC, você está no peso ideal.');
  } else if (calculaImc >= 25 && calculaImc < 30) {
    stdout.writeln('Com base no seu IMC, você está acima do peso ideal.');
  } else if (calculaImc >= 30 && calculaImc < 35) {
    stdout.writeln('Com base no seu IMC, você está com obesidade grau I.');
  } else if (calculaImc >= 35 && calculaImc < 40) {
    stdout.writeln('Com base no seu IMC, você está com obesidade grau II.');
  } else {
    stdout.writeln('Com base no seu IMC, você está com obesidade grau III.');
  }
}
