function sortTable(n) {
  var table = document.getElementById("myTable");
  var rows = Array.from(table.rows).slice(1); // Convertir las filas en un array y omitir la primera fila de encabezado
  var dir = "asc";

  rows.sort(function (a, b) {
    var x = a.getElementsByTagName("TD")[n].innerHTML.toLowerCase();
    var y = b.getElementsByTagName("TD")[n].innerHTML.toLowerCase();

    if (
      !isNaN(parseFloat(x)) &&
      isFinite(x) &&
      !isNaN(parseFloat(y)) &&
      isFinite(y)
    ) {
      // Si los valores son numéricos, comparar como números
      x = parseFloat(x);
      y = parseFloat(y);
    }

    if (dir === "asc") {
      return x - y;
    } else {
      return y - x;
    }
  });

  // Reordenar las filas en la tabla
  rows.forEach(function (row) {
    table.appendChild(row);
  });

  // Cambiar la dirección de ordenamiento
  if (dir === "asc") {
    dir = "desc";
  } else {
    dir = "asc";
  }
}
