void main() {
  
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final List<String> sprites = ['ditto/front.png', 'ditto/back.png'];
  
  // por defecto dynamic == null

    dynamic errorMessage = 'Hola';
    errorMessage = true;
    errorMessage = [1,2,3,4,5,6];
    errorMessage = {1,2,3,4,5,6};
    errorMessage = () => true;
    errorMessage = null;

  print(""" 
  $isAlive
  $pokemon
  $hp
  $abilities
  $sprites
  """);
 
}