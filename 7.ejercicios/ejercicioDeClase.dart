import 'dart:ffi';

void main() {
  Persona persona = new Persona(nombre: "Wilmer", apellido:  "Castro",edad: 23);
  ////////////////// ARTISTA
  Artista artista = Artista("Pedro Gallery");
  print("Artista: " "${artista.nombre} ${artista.apellido} Edad: ${artista.edad}");
  print("Galeria: ${artista.nomGaleria}" );
  artista.color = "Azul";
  artista.figura = "Circulo";
  print(artista.dibujarFigura());
  /////////////////// INGENIERO
  Ingeniero ingeniero = Ingeniero("Ingenieria de Software");
  print("\nIngeniero: " "${ingeniero.nombre} ${ingeniero.apellido} Edad: ${ingeniero.edad}");
  print("Area: ${ingeniero.area}" );
  ingeniero.color = "Rojo";
  ingeniero.figura = "Triangulo";
  print(ingeniero.dibujarFigura());
  ingeniero.libro = "Cien Años de Soledad";
  ingeniero.tema = "Drama";
  print(ingeniero.leerLibro());
  /////////////////// DOCTOR
  Doctor doctor = Doctor("Pediatria");
  print("\nDoctor: ${doctor.nombre} ${doctor.apellido} Edad: ${doctor.edad}");
  print("Especialista: ${doctor.especialista}");
  doctor.libro = "Historia de la Pediatria";
  doctor.tema = "Medicina";
  print(doctor.leerLibro());
  doctor.deporte = "Futbol";
  doctor.horas = "5 hr";
  print(doctor.praticarDeporte());
  /////////////////// ATLETA
  Atleta atleta = Atleta("Alto");
  print("\nAtleta: ${atleta.nombre} ${atleta.apellido} Edad: ${atleta.edad}");
  print("Rendimiento: ${atleta.rendimiento}");
  atleta.deporte = "Atletismo";
  atleta.horas ="8 hr";
  print(atleta.praticarDeporte());
  atleta.golpea = true;
  atleta.contrario = "Rick Ricon";
  print(atleta.golpearContrario());
  /////////////////// BOXEADOR
  Boxeador boxeador = Boxeador("85 kg");
  print("\nBoxeador: ${boxeador.nombre} ${boxeador.apellido} Edad: ${boxeador.edad}");
  print("Rendimiento: ${boxeador.rendimiento} Peso: ${boxeador.peso}");
  boxeador.deporte = "Boxeo";
  boxeador.horas = "10 hr";
  print(boxeador.praticarDeporte());
  boxeador.golpea = false;
  boxeador.contrario = "Mike Tyson";
  print(boxeador.golpearContrario());
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
  Ingeniero(this.area): super.completo("Arturo","Casas",23);
}
class Doctor extends Persona with Ejercitarse, Leer{
  String especialista;
  Doctor(this.especialista): super.completo("Pedro","Florez",23);
}
class Atleta extends Persona with Ejercitarse, Boxear{
  String rendimiento;
  Atleta(this.rendimiento): super.completo("Mario","Ruiz",23);
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
  bool? golpea;
  String? contrario;
  golpearContrario(){
    return "Golpe " + "${golpea == true ? "Directo": "Fallido" }" + " a " + "${contrario}";
  }
}