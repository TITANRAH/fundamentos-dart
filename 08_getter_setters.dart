  
  
void main(){
  
  
  final mySquare = Square(side: 10);
  
  //lanza un error por que le envie un setter diciendo 
  //que si es menor a 5 no permitas ejecutar la funcion del getter
  mySquare.side = -5;
  
  print('area: ${mySquare.calculateArea()}');
  
  print ('area por medio de un getter : ${mySquare.area}');
  
  
}

// creo una clase 
// defino su propiedad
// defino su constructor y duigo que su valor de propiedad
// es requerido
// defino un metodo que calcula un valor en este caso de sus lados
// digo que es sid por side
  
// creo una variable cuyo valor es una instancia de Square 
// y le asigno un valor a su propiedad
  
// llamo a la funcion mediante el nombre de variable y . para acceder 


class Square {
  
  double _side;
  
  Square ({
    required double side
  }): _side = side;
  
  //asigne una nueva propiedad por medio de un get
  
  double get area {
    return _side * _side;
  }
  //las assersiones son para que los valores cumplan ciertaas condiciones antes de ser asignables a un valor
  set side(double value) {
    print('setting now value $value');
    
    //si se cumple la condicion no continua ejecutando este setter 
    if (value < 0) throw 'Value  must be >= 0';
    
    //si no se cumple la condicion el _side sera igual valor que se le quier establecer
    _side = value;
  }
  
  double calculateArea(){
    return _side * _side;
  }
}