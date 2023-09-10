void main(){
  
  //simular respuesta http
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Trepar paredes',
    'isAlive': true
  };
  
 // final ironman = Hero(
   // isAlive: rawJson['isAlive2'] ?? false,
   //) power: 'Money',
   // name: rawJson['name'],
  //);
  
  
  //como esta mapeado le pasamos la respuesta http
  final ironman = Hero.fromJson(rawJson);
  
  print (ironman);
}

class Hero {
  String name;
  String power;
  bool isAlive;
  
  
  Hero({
    
    required this.name,
    required this.power,
    required this.isAlive,
  });
  
  
  //creamos el mapeo 
  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No isAlive found';
  
  @override
  
  String toString(){
    return '$name, $power ${isAlive ? 'YES' : 'NOPE'}';
  }
  
}



