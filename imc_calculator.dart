import 'dart:io';
import 'dart:math';

class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);

  String getNome() {
    return nome;
  }

  double getPeso() {
    return peso;
  }

  double getAltura() {
    return altura;
  }

  void calculoImc() {
    var imc = peso / pow(altura, 2);
    var result = "";

    if (imc < 16) {
      result = "Magreza grave";
    } else if (imc >= 16 && imc < 17) {
      result = "Magreza moderada";
    } else if (imc >= 17 && imc < 18.5) {
      result = "Magreza leve";
    } else if (imc >= 18.5 && imc < 25) {
      result = "Saudável";
    } else if (imc >= 25 && imc < 30) {
      result = "Sobrepeso";
    } else if (imc >= 30 && imc < 35) {
      result = "Obesidade grau I";
    } else if (imc >= 35 && imc < 40) {
      result = "Obesidade grau II (severa)";
    } else {
      result = "Obesidade grau III (mórbida)";
    }

    print(
        "$nome, seu imc é: ${imc.toStringAsFixed(1)}, e você está/com $result");
  }
}

void main() {
  print("Digite seu nome");
  String nome = stdin.readLineSync()!;
  print("Digite seu peso");
  double peso = double.parse(stdin.readLineSync()!);
  print("Digite sua altura");
  double altura = double.parse(stdin.readLineSync()!);

  Pessoa pessoa = Pessoa(nome, peso, altura);
  pessoa.calculoImc();
}
