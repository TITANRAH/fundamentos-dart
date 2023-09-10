void main() {
  
  final Hero wolverine =  Hero('Logan', 'Renegeration');
  
  print(wolverine.name);
  
  print(wolverine.power);
  
}

class Hero {
  
  String? name;
  String? power;
  
  //Hero(String pName, String pPower){
    //name = pName;
   // power = pPower;
  //}
  
  // tambien se puede asi mas corto
  // esto es el constructor de la clase Hero
  // en main instancio un Heroe usando su clase Hero
  
  Hero(this.name, this.power);
  
  
}

void main() {
  
  final Hero wolverine =  Hero(name: 'Logan', power: 'Renegeration');
  
  //las clases traen el metodo toString y podemos sobrescribir lo que devuelve
  print(wolverine);
  print(wolverine.name);
  
  print(wolverine.power);
  
}

class Hero {
  
  String? name;
  String? power;
  
  //Hero(String pName, String pPower){
    //name = pName;
   // power = pPower;
  //}
  
  // tambien se puede asi mas corto
  // esto es el constructor de la clase Hero
  // en main instancio un Heroe usando su clase Hero
  
  Hero({
   required this.name, 
   this.power = 'sin poder',
  });
  
  //aqui sobre escribi el metodo toString para que me devuelva 
  //hola mundo en vez de 'instance of Hero' si le saco 
  // el toString al print de wolverine tambien me devolvera 
  // lo que retorna toString
  // en este caso podemos sobreescribir y poner los valores del heroe 
  // name y power
  @override
  String toString() {
    return '$name - $power';
  }
  
  
}
