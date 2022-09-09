import 'dart:ffi';

void main() {

}
class Persona {
  String nombre;
  String? apellido;
  int? edad;
  
  Persona( {required this.nombre, required this.apellido, required this.edad});
  Persona.completo(this.nombre,this.apellido,this.edad);
}
class Artista extends Persona with Dibujar{
  String nomGaleria;
  Artista(this.nomGaleria): super.completo("Pedro","Fernandez",55);
}
class Ingeniero extends Persona with Dibujar, Leer{
  String area;
  Ingeniero(this.area): super.completo("Wilmer","Castro",23);
}
class Doctor extends Persona with Ejercitarse, Leer{
  String especialista;
  Doctor(this.especialista): super.completo("Wilmer","Castro",23);
}
class Atleta extends Persona with Ejercitarse, Boxear{
  String rendimiento;
  Atleta(this.rendimiento): super.completo("Wilmer","Castro",23);
  Atleta.completo({required this.rendimiento, required super.nombre,required super.apellido, required super.edad});
}
class Boxeador extends Atleta {
  String peso;
  Boxeador(this.peso): super.completo( rendimiento: "ALTO", nombre: "ARTURO", apellido: "CALLE", edad: 59);
}
mixin Dibujar{
  String? color;
  String? figura;
  dibujarFigura(){
    return "Dibujo " + "${figura}" + " de " + "${color}";
  }
}
mixin Leer {
  String? libro;
  String? tema;
  leerLibro(){
    return "Lee el libro " + "${libro}" + " del tema " + "${tema}";
  }
}
mixin Ejercitarse {
  String? deporte;
  String? horas;
  praticarDeporte(){
    return "Practica " + "${deporte}" + " un total de " + "${horas}";
  }
}
mixin Boxear {
  Bool? golpea;
  String? contrario;
  golpearContrario(){
    return "Golpe " + "${golpea}" + " a " + "${contrario}";
  }
}