import 'dart:math';
void main() {
  print("EJERCICIO 1");
  ejercicio1();
  print("EJERCICIO 2");
  ejercicio2();
}
void ejercicio1(){
  List <int> edadesPersonas = [12,13,14,15,16,17];
  var numeroMenor = edadesPersonas.reduce(min);
  var numeroMayor = edadesPersonas.reduce(max);
  var sum = edadesPersonas.reduce((a, b)=> (a + b));
  var prom = sum/edadesPersonas.length;
  print("Listada de edades $edadesPersonas");
  print("Edad Mayor $numeroMenor");
  print("Edad Menor $numeroMayor");
  print("Promedio $prom");
}
void ejercicio2(){
  final lista = [[1,1,2,3,5,8,13,21,34,55,89], [1,2,3,4,5,6,7,8,9,10,11,12,13]];
  final listaFin = lista.fold<Set>(lista.first.toSet(), (a, b) => a.intersection(b.toSet()));
  print("Listas $lista");
  print("Elememtos en Comun $listaFin");
}