//CALCULO IMC
import 'dart:io';

main() {
    IMC();
}

IMC() {
    print("Digite seu peso:");
    String textPeso = stdin.readLineSync() ?? ""; // Substituir var por String para não receber valor nulo
    var peso = double.parse(textPeso); // Substituir int.parse por double.parse para aceitar números decimais

    print("Digite sua altura:");
    String textAltura = stdin.readLineSync()!; // Adicionar ?? "" ao final de tdin.readLineSync() para verificar se retornou um valor nulo, caso contrario da erro
    var altura = double.parse(textAltura);
    var calculoIMC = calc(peso, altura);
    
    ImprimirResultado(calculoIMC);
}

calc(var peso, var altura) {
    return peso / (altura * altura);
}

ImprimirResultado(calculoIMC) {
    print("Índice de massa: $calculoIMC"); // Comando para printar na mesma linha que o print abaixo
    print("===============");
    
    if (calculoIMC < 18.5){ 
        print("Abaixo do peso!");
    } else if (calculoIMC > 18.5 && calculoIMC < 24.9) {
        print("Peso normal!");
    } else if (calculoIMC > 25 && calculoIMC < 29.9) {
        print("Sobrepeso!");
    } else if (calculoIMC > 30 && calculoIMC < 34.9) {
        print("Obesidade grau 1!");
    } else if (calculoIMC > 35 && calculoIMC < 39.9) {
        print("Obesidade grau 2!");
    } else {
        print("obesidade grau 3!");
    }
}