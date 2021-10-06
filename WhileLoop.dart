import 'dart:io';

main() {

  bool condicao = true;

  while (condicao) {
    print("Escreva um texto: ");
    String text = stdin.readLineSync()!;
    if (text == "sair" || text == "end"){
      condicao = false;
      print("VOCÊ SAIU");
    } else {
      print("Você digitou: $text");
    }

  }
}
