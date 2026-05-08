import 'dart:io';
List<Map<String, dynamic>> inventario = [];

void agregarProducto(List<Map<String, dynamic>> lista) {
  Map<String, dynamic> nuevoProducto = {};

  print("--- Registro de Producto ---");

  print("Ingrese el nombre del producto:");
  nuevoProducto["name"] = stdin.readLineSync()!;
  print("Ingrese el precio del producto:");
  nuevoProducto["precio"] = double.tryParse(stdin.readLineSync() ?? '0') ?? 0.0;

  print("Ingrese la cantidad disponible:"); 
  nuevoProducto["cantidad"] = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

  lista.add(nuevoProducto);
  print("\n✅ ¡Producto agregado exitosamente!");
  print("Estado actual del inventario: $inventario\n");
}