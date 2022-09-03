void main() {
  print(obtenerNombre("Wilmer"));
  print(obtenerNombreCompleto("Wilmer", "Castro"));
  print(obtenerNombreCompletoPara(apellido: "Castro"));
  print(AnonFunction("PEPEPEPE"));
}
String obtenerNombre(String nombre){
  return 'My name is $nombre';
}

String obtenerNombreCompleto(String nombre, String apellido){
  return 'My name is $nombre $apellido';
}

String obtenerNombreCompletoPara({String? nombre, required String apellido, int edad = 25}){
  return 'My name is $nombre $apellido and I am $edad years old';
}

var AnonFunction = (String valor){
  return "el valor es $valor";
};
