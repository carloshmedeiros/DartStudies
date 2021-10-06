import "dart:io";

List<String> produtos = [];

main() {
  
  bool condicao = true;
  while (condicao) {
    print("ADICIONE UM PRODUTO [imprimir][remover]");
    String text = stdin.readLineSync()!;
    if (text == "sair") {
      print("FIM DA SESSÃO");
      condicao = false;
    } else if (text == "imprimir") {
      printar();
    } else if (text == "remover") {
      remover();
    } else {
      produtos.add(text);
      print("\x1B[2J\x1B[0;0H");
    }
  }
}

printar() {
  for (var i = 0; i < produtos.length; i++) {
    print("ITEM $i - ${produtos[i]}");
  }
}

remover() {
  print("Qual item deseja remover? (Digite o número)");
  printar();
  int item = int.parse(stdin.readLineSync()!);
  produtos.removeAt(item);
  print("ITEM REMOVIDO");
}