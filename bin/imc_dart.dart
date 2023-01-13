import 'dart:io';

void main(List<String> arguments) {
  print('Bem vindo ao cálculo de IMC!\n'
      'Primeiramente, insira sua altura:');
  double? altura = double.parse(stdin.readLineSync()!);
  print('Agora, insira seu peso em KG:');
  double? peso = double.parse(stdin.readLineSync()!);
  final result = peso/(altura*altura);

  var imc = '';

  if(result < 18.5){
    imc = 'Abaixo do peso';
  }else if (result >= 18.6 && result <= 24.9){
    imc = 'Peso ideal';
  }else if (result >= 25.0 && result <= 29.9){
    imc = 'Levemente acima do peso';
  }else if (result >= 30.0 && result <= 34.9){
    imc = 'Obesidade grau I';
  }else if (result >= 35.0 && result <= 39.9){
    imc = 'Obesidade grau II (severa)';
  }else if (result >= 40){
    imc = 'Obesidade grau III (mórbida)';
  }

  print('Com base nas informações inseridas, na tabela do IMC sua categoria é: $imc.');
}
