function sortTable(n) {
  var table = document.getElementById("myTable");
  var rows = Array.from(table.rows).slice(1); // Convertir las filas en un array y omitir la primera fila de encabezado
  var dir = "asc";

  rows.sort(function (a, b) {
    var x = a.getElementsByTagName("TD")[n].innerHTML.toLowerCase();
    var y = b.getElementsByTagName("TD")[n].innerHTML.toLowerCase();

    if (dir === "asc") {
      return x.localeCompare(y);
    } else {
      return y.localeCompare(x);
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
