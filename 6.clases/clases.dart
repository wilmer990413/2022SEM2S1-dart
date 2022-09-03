void main() {
  Persona persona = new Persona(nombre: "Wilmer", apellido:  "Castro",edad: 23);
  Padre padre = Padre(3);
  print(padre.nombre);

  var taxi = new Taxi();
  taxi.placa = 'AES45A';
  print(taxi.tipoVehiculo());
  print(taxi.placa);
  if(taxi is Taxi){
    print("Si es un taxi");
  }else{
    print("No, si es de tipo taxi");
  }
}

class Persona {
  String nombre;
  String? apellido;
  int? edad;
  
  Persona( {required this.nombre, required this.apellido, required this.edad});
  Persona.completo(this.nombre);
}

class Padre extends Persona{
  int hijos;
  //Padre(this.hijos):super(nombre: "Wilmer", apellido: "Castro", edad: 23);
  Padre(this.hijos): super.completo("Wilmer");
}
abstract class Vehiculo {
  late String placa;
  bool VehiculoEncendido();
}
class Taxi extends Vehiculo with Terrestre{
  @override
  bool VehiculoEncendido() {
    return true;
  }
}

mixin Terrestre {
  int? llantas;
  int? kilometraje;
  tipoVehiculo(){
    return "Terrestre";
  }
}

mixin Acuatico {
  int? motores;
  tipoVehiculo(){
    return "Acuatico";
  }
}