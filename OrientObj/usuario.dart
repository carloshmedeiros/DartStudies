class Usuario {
  late String
      nome; // utilizar late pois a variavel sera utilizada depois de declarada
  late int idade;
  late double peso;
  late double altura;

  double imc() => peso / (altura * altura);

  bool tipoidade() => idade >= 18;

  resultadoIMC(double imc) {
    String resultadoIMC;

    if (imc < 18.5) {
      resultadoIMC = "Abaixo do peso!";
    } else if (imc > 18.5 && imc < 24.9) {
      resultadoIMC = "Peso normal!";
    } else if (imc > 25 && imc < 29.9) {
      resultadoIMC = "Sobrepeso!";
    } else if (imc > 30 && imc < 34.9) {
      resultadoIMC = "Obesidade grau 1!";
    } else if (imc > 35 && imc < 39.9) {
      resultadoIMC = "Obesidade grau 2!";
    } else {
      resultadoIMC = "obesidade grau 3!";
    }
    return resultadoIMC;
  }
}
