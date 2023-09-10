void main(){
  
  //final windPlant = EnergyPlant();
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft : 1000);
  
  print(windPlant);
  
  print('wind: ${chargePhone(windPlant)}');
  print('nuclear: ${chargePhone(nuclearPlant)}');
  
}

//las clases abstractas no se pueden instanciar 
  //sirven para ser el molde de otras clases 
//  que extiendan de esta clase abstracta


//en este punto EnergyPlant esta representada 
  //solo por windPlant que tiene un valor de carga inicial de 100 
  //si tuvieramos otra planta para enviar al parametro plant de esta 
  //funcion seria otra respuessta dependiendo del valor de esa nueva planta 
  //por lo que estsa funcion funcionaria para todas las plantas creadas 
  //sin necesidad de cambiar el tipo de parametro que se envia
  //esa es la ventaja de crear clases abstractas

double chargePhone (EnergyPlant plant){
  
  if(plant.energyLeft < 10){
    throw Exception('Not enough energy');
  }
  
  return plant.energyLeft - 10;
}
enum PlantType {
  nuclear, wind, water
}

abstract class EnergyPlant {
  
  double energyLeft;
  final PlantType type; // nuclear wind water
  
  EnergyPlant({
    required this.energyLeft,
    required this.type,
  });
  
  void consumeEnergy ( double amount);
}

//extends o implements
//la nueva planta de energya extiende de EnergyPlant
// puedo poner propiedades para esta clase nueva que extiende
// pero debo satisfacer las propiedades de la clase padre
// y eso se hace con super
// en este caso la propiedad requerida del padre son type y energyLeft 
// digo que energyLeft es la propiedad de initialEnergy que pertenece a la clase hija WindPlant
// y que type es una propiedad del enum PlantType.wind
class WindPlant extends EnergyPlant{
  //extender es usar herencia
  WindPlant({
    required double initialEnergy
  }): super(energyLeft: initialEnergy, 
            type: PlantType.wind);
  
  //tambien debo declarar el metodo del padre 
  @override
  void consumeEnergy(double amount){
    energyLeft -= amount;
  }
  
  
}


class NuclearPlant implements EnergyPlant {
  
  @override
  double energyLeft;
  
  @override
  final PlantType type = PlantType.nuclear;
  NuclearPlant({
    required this.energyLeft
  });
  
  @override
  void consumeEnergy(double amount){
    energyLeft -= (amount * 0.5);
  }
  
}