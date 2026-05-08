import 'dart:io';
import 'agregar_producto.dart';
import 'eliminar.dart';
void main() {
  List<Map<String, dynamic>> inventario = [];
  int option = 0;
do{
  print("MENU");
  print("1. Agregar libro.");
  print("2. Listar libros.");
  print("3. Actualizar lista.");
  print("4. Eliminar libro.");
  print("5. Salir.");
  option = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  switch(option){
      case 1:
        agregarProducto(inventario);
        break;
      case 2:
      // Listar libros
      print(inventario);
      break;
      case 3:
        // Actualizar lista
        
        break;
      case 4:
        // Eliminar libro
        eliminarProducto(inventario);
        break;
        
        case 5:
        print("Saliendo del programa...");
        break;
      default:
        print("Opción no válida. Por favor, intente de nuevo.");
    }
  }while(option != 6);
}