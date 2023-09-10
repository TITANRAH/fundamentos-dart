void main() async{
  
  print('Inicio del programa');
  
  try {
      final value = await httpGet('https://granrah.com/cursos');
  print('exito: $value');
   // EN EL ON MANDAMOS A LLAMAR LA EXCEPTION DECLARADA EN LA FUNCION ABAJO
  } on Exception catch(err) {
    print( 'Tenemos una exception: $err');
  } 
  
  catch (err) {
    print('OOPS ALGO TERRIBLE PASO $err');
  } finally {
    print( 'fin del try catch');
  }
 
  print('Fin del programa');
}

Future<String> httpGet( String url ) async {
  
  await Future.delayed( const Duration(seconds: 1));
  
  throw Exception('No hay parametros en la url');
  //throw 'Error en la peticion';
  //return 'Tnemos un valor de la peticion';
}