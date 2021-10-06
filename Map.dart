import "dart:io";

List<Map<String, dynamic>> cadastros = [];

main(){
  
  bool condicao = true;
  print("\x1B[2J\x1B[0;0H"); // Limpa tela do terminal
  while (condicao) {
    print("DIGITE UM COMANDO [cadastrar][imprimir][sair]");
    String comando = stdin.readLineSync()!;
    if(comando == "sair"){
      print("FIM DA SESSÃO");
      condicao = false;
    } else if(comando == "cadastrar"){
      print("\x1B[2J\x1B[0;0H");
      cadastrar();
    } else if(comando == "imprimir"){
      print(cadastros);
    } else {
      print("COMANDO NÃO ENCONTRADO");
    } 
  }

}

cadastrar(){
  Map<String, dynamic> cadastro = {};

  print("Digite o seu Nome");
  cadastro["nome"] = stdin.readLineSync()!;

  print("Digite o sua idade");
  cadastro["idade"] = stdin.readLineSync()!;

  print("Digite o sua cidade");
  cadastro["cidade"] = stdin.readLineSync()!;

  print("Digite o sua estado");
  cadastro["estado"] = stdin.readLineSync()!;
  cadastros.add(cadastro);
}