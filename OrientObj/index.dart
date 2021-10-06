import 'dart:io';
import 'usuario.dart';

Usuario usuario = Usuario();

main(List<String> args) {
  print("Digite seu nome");
  usuario.nome = stdin.readLineSync()!;
  print("Digite sua idade");
  usuario.idade = int.parse(stdin.readLineSync()!);
  print("Digite seu peso");
  usuario.peso = double.parse(stdin.readLineSync()!);
  print("Digite sua altura");
  usuario.altura = double.parse(stdin.readLineSync()!);

  print("Nome ${usuario.nome}");
  print("IMC ${usuario.imc()} ${usuario.resultadoIMC(usuario.imc())}");
  print("Maior de idade? ${usuario.tipoidade()}!");

}