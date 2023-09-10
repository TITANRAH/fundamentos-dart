
void main() {
 print('Suma: ${addTwoNumbers(10, 20)}');
  
  print(greetPerson(name: 'Sergio', message: 'Hi'));


}


//tipar siempre lo que retorna la funcion
String greetEveryone() => 'Hello Everyone !';

int addTwoNumbers (int a, int b) => a + b;

// esta es una forma de poner opcional un parametro
// entre llaves cuadradas y luego dandole un valor opcional al parametro
// puedo poner tantos valores opcionales como quiera 
int addTwoNumbersOptional (int a,[ int b = 0 ]) {
  
  //b = b ?? 0;
  
  //b ??= 0;
  return a + b;
  
  }

//tambien al poner entre llaves son paramtros opcionales
// y debo ponerlos con signo de interrogacion por el null safety
// o bien ponerles un valor por defecto
// para obligar a que algun parametro siempre este se usa required
// en este caso si no le doy valor al parametro message sera hola por defecto
// y si le doy sera el que le de

String greetPerson({required String name,String message = 'Hola, '}) {
  return '$message Sergio';
}