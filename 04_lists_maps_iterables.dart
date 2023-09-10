void main() {

    final numbers = [1,2,3,4,5,6,6,7,8,9,9,10];
  
  print('List original: $numbers');
  
  print('Length: ${numbers.length}');
  print('Index 0:  ${numbers[0]}');
  
   print('Index 0:  ${numbers.first}');
   print('Reversed:  ${numbers.reversed}');
  
  //se convierte en interable osea se puede iterar
  final resversedNumbers = numbers.reversed;
  // aqui lo regreso a lista por que una lista no es lo mismo que un iterable
  print('Iterable: ${resversedNumbers.toList()}');
  // asi lo paso a set y elimina los duplicados
  print('Set: ${resversedNumbers.toSet().toList()}');
  
  // un set lanza valores unicos
  
  //lista original pasada a set y luego list para eliminar duplicados
  
  print('List original pasando a set luego a list para eliminar duplicados: ${numbers.toSet().toList()}');
  
  // el metodo where de listas regresa un true o false
  final numebrsGreaterThan5 = numbers.where((int num){
    // si el numero es mayor a 5 regresa true si no false
    // pero ademas traeria los numeros mayores a 5
    return num > 5;
  });
  
  //el where devuelve un iterable
  print('Numeros mayor a 5 $numebrsGreaterThan5');
  
  //quitando duplicados
  final numerosMayorA5sinDuplicados = numebrsGreaterThan5.toSet();
  
  print('Quitar duplicados por medio de set $numerosMayorA5sinDuplicados');
  
  print('pasando a List los numeros mayores a 5 ${numerosMayorA5sinDuplicados.toList()}');
}

//mapa es son pares de valores
//