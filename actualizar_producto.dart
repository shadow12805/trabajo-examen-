// actualizar_producto.dart
// 🟢 PERSONA 3 - Actualizar producto

import 'dart:io';

void actualizarProducto(List<Map<String, dynamic>> lista) {
  if (lista.isEmpty) {
    print("\n⚠️ El inventario está vacío. No hay nada que actualizar.");
    return;
  }

  // Mostrar productos disponibles
  print("\n--- Productos disponibles ---");
  for (int i = 0; i < lista.length; i++) {
    print("$i: ${lista[i]['name']} | Precio: \$${lista[i]['precio']} | Cantidad: ${lista[i]['cantidad']}");
  }

  // Pedir índice
  print("\nIngrese el número del producto a actualizar:");
  String? input = stdin.readLineSync();
  int? indice = int.tryParse(input ?? '');

  if (indice == null || indice < 0 || indice >= lista.length) {
    print("❌ Índice inválido.");
    return;
  }

  // Mostrar producto seleccionado
  Map<String, dynamic> producto = lista[indice];
  print("\n📦 Producto seleccionado:");
  print("   Nombre: ${producto['name']}");
  print("   Precio: \$${producto['precio']}");
  print("   Cantidad: ${producto['cantidad']}");
  print("\n(Presione Enter para mantener el valor actual)\n");

  // Actualizar nombre
  print("Nuevo nombre [${producto['name']}]:");
  String? nuevoNombre = stdin.readLineSync();
  if (nuevoNombre != null && nuevoNombre.trim().isNotEmpty) {
    producto['name'] = nuevoNombre.trim();
  }

  // Actualizar precio
  print("Nuevo precio [${producto['precio']}]:");
  String? nuevoPrecio = stdin.readLineSync();
  if (nuevoPrecio != null && nuevoPrecio.trim().isNotEmpty) {
    double? precio = double.tryParse(nuevoPrecio.trim());
    if (precio != null) {
      producto['precio'] = precio;
    } else {
      print("⚠️ Precio inválido, se mantiene el anterior.");
    }
  }

  // Actualizar cantidad
  print("Nueva cantidad [${producto['cantidad']}]:");
  String? nuevaCantidad = stdin.readLineSync();
  if (nuevaCantidad != null && nuevaCantidad.trim().isNotEmpty) {
    int? cantidad = int.tryParse(nuevaCantidad.trim());
    if (cantidad != null) {
      producto['cantidad'] = cantidad;
    } else {
      print("⚠️ Cantidad inválida, se mantiene la anterior.");
    }
  }

  print("\n✅ ¡Producto actualizado exitosamente!");
  print("   Nombre: ${producto['name']}");
  print("   Precio: \$${producto['precio']}");
  print("   Cantidad: ${producto['cantidad']}");
}