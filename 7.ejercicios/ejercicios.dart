import 'dart:math';
void main() {
  print("EJERCICIO 1");
  ejercicio1();
  print("EJERCICIO 2");
  ejercicio2();
  print("EJERCICIO 3");
  ejercicio3();
  print("EJERCICIO 4");
  ejercicio4();
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
void ejercicio3(){
  List <String> cadenas = ["La ruta normal", "Esto si es", "Paradises", "Hola", "Sol", "Ana", "Oro", "Oso",
				"A ti no, bonita"];
  for(String cadena in cadenas){
    if(esPalindromo(cadena) == true){
      print( "¿'" + cadena + "'es palindromo? Si");
    } else {
      print( "¿'" + cadena + "'es palindromo? No");
    }
  }
}
bool esPalindromo(String cadena){
  cadena = cadena.toLowerCase().replaceAll("á", "a").replaceAll("é", "e").replaceAll("í", "i").replaceAll("ó", "o").replaceAll("ú", "u").replaceAll(" ", "").replaceAll(".", "").replaceAll(",", "");
  String invertida = cadena.split('').reversed.join();
  return invertida==cadena;
}
void ejercicio4(){
  List <int> a = [1,4,9,16,25,36,49,64,81,100];
  List <int> b = []..addAll(a);
  for(int i = 0; i < b.length; i++){
    if((b[i]%2) != 0){
      print(b.removeAt(i));
    }
  }
  print("Lista Normal: " "${a}");
  print("Lista de Pares: " "${b}");
}