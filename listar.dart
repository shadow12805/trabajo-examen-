void listarProductos(List<Map<String, dynamic>> lista) {
  if (lista.isEmpty) {
    print("\n El inventario está vacío. No hay productos para mostrar.");
    return;
  }

  print("\n═══════════════════════════════════════════════════════════");
  print("                  I N V E N T A R I O                      ");
  print("═══════════════════════════════════════════════════════════");
  print("  #  |     NOMBRE     |   PRECIO   |  CANTIDAD  ");
  print("-----------------------------------------------------------");

  for (int i = 0; i < lista.length; i++) {
    String nombre = lista[i]['name']?.toString() ?? 'Sin nombre';
    double precio = (lista[i]['precio'] as num?)?.toDouble() ?? 0.0;
    int cantidad = (lista[i]['cantidad'] as num?)?.toInt() ?? 0;

    // Formatear para que se vea ordenado
    String numStr = i.toString().padLeft(3);
    String nomStr = nombre.length > 14 ? nombre.substring(0, 11) + '...' : nombre;
    nomStr = nomStr.padRight(14);
    String preStr = "\$${precio.toStringAsFixed(2)}".padLeft(10);
    String canStr = cantidad.toString().padLeft(10);

    print("$numStr | $nomStr | $preStr | $canStr");
  }

  print("Total de productos: ${lista.length}");

}