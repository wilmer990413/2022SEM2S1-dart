void main() {
  try {
    String nombre = obtenerNombre("");
    print(nombre);
  } on FormatException catch (e) {
    print("Se presento una excepcion FormatException = $e");
  } on Exception catch (e){
    print("Se presento una excepcion Exception = $e");
  }
  catch (e) {
    print("Se presenta una exception general");
  } finally {
    print("Este es el finally");
  }
}

String obtenerNombre(String nombre){
  if (nombre == 'Wilmer') {
    throw FormatException("Este nombre no esta permitido");
  }
  if (nombre == ""){
    throw Exception("No ingreso un nombre");
  }
  return 'Mi nombre es $nombre';
}
