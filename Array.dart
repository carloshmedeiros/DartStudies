import 'dart:io';

main() { 
  var nome = [];

  bool condicao = true;

  while(condicao) {
    print("Digite o nome");
    String text = stdin.readLineSync()!;
    if(text == "sair" || text == "end"){
      print("FIM DA SESSÃO");
      condicao = false;
    } else {
      nome.add(text);
    }
    Printar(nome);
  }
}

Printar(nome){
    if(nome.length > 1){
      print(nome);
      stdout.write(nome.length); // conta a quantidade de nomes
      print(" nomes estão dentro de sua lista"); 
      print("\n"); // comando para pular linhar
    } else {
      print(nome);
      stdout.write(nome.length);
      print(" nome esta dentro de sua lista"); 
      print("\n"); // comando para pular linhar
    }
  }