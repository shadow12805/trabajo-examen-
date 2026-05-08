import 'dart:io';
List<Map<String, dynamic>> lista = []; 

void eliminarProducto(List<Map<String, dynamic>> lista) {
  if (lista.isEmpty) {
    print("\n El inventario está vacío. No hay nada que eliminar.");
    return;
  }

  print("\n--- Productos disponibles ---");
  for (int i = 0; i < lista.length; i++) {
    print("$i: ${lista[i]['name']} (Precio: ${lista[i]['precio']})");
  }

  print("\nIngrese el nombre exacto del producto a eliminar:");
  String nombreAEliminar = stdin.readLineSync()!;

  int cantidadAntes = lista.length;
  lista.removeWhere((item) => 
    item['name'].toString().toLowerCase() == nombreAEliminar.toLowerCase()
  );

  if (lista.length < cantidadAntes) {
    print("✅ Producto '$nombreAEliminar' eliminado correctamente.");
  } else {
    print("❌ No se encontró ningún producto con ese nombre.");
  }
}