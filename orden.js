function sortTable(n) { // Función para ordenar la tabla por la columna n
  var table = document.getElementById("myTable"); // Obtiene la referencia a la tabla con el id "myTable"
  var rows = Array.from(table.rows).slice(1); // Convierte las filas de la tabla en un array y omite la primera fila de encabezado
  var dir = "asc"; // Variable para almacenar la dirección de ordenamiento, inicializada en "asc" (ascendente)

  rows.sort(function (a, b) {
    var x = a.getElementsByTagName("TD")[n].innerHTML.toLowerCase(); // Obtiene el contenido de la celda n de la fila a y lo convierte a minúsculas
    var y = b.getElementsByTagName("TD")[n].innerHTML.toLowerCase(); // Obtiene el contenido de la celda n de la fila b y lo convierte a minúsculas

    if (
      !isNaN(parseFloat(x)) && // Comprueba si x es un número válido
      isFinite(x) && // Comprueba si x es un número finito
      !isNaN(parseFloat(y)) && // Comprueba si y es un número válido
      isFinite(y) // Comprueba si y es un número finito
    ) {
      // Si los valores son numéricos, comparar como números
      x = parseFloat(x);
      y = parseFloat(y);
    }

    if (dir === "asc") {
      return x - y; // Ordena en orden ascendente
    } else {
      return y - x; // Ordena en orden descendente
    }
  });

  // Reordenar las filas en la tabla
  rows.forEach(function (row) {
    table.appendChild(row);
  });

  // Cambiar la dirección de ordenamiento
  if (dir === "asc") {
    dir = "desc"; // Si estaba ordenando en orden ascendente, cambia a orden descendente
  } else {
    dir = "asc"; // Si estaba ordenando en orden descendente, cambia a orden ascendente
  }
}
