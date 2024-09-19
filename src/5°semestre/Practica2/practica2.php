<?php
// Obtener información
$nombre = $_POST["nombre"];
$fecha = $_POST["fecha"];
$num_control = $_POST["num_control"];

$materias = $_POST["materias"];
$calificaciones = $_POST["calificaciones"];
$maestros = $_POST["maestros"];

$promedio = 0;
$suma = 0;
// Ciclo para obtener sumatoria y promedio
for ($i = 0; $i < count($calificaciones); $i++) {
    $suma += $calificaciones[$i];
}

// Obtener promedio
$promedio = $suma / count($materias);

// Imprimir el detalle de la boleta
echo "<!DOCTYPE html>";
echo "<html lang='en'>";
echo "<head>";
echo "    <meta charset='UTF-8'>";
echo "    <meta name='viewport' content='width=device-width, initial-scale=1.0'>";
echo "    <title>Boleta de Calificaciones</title>";
echo "    <link href='https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css' rel='stylesheet'>";
echo "</head>";
echo "<body class='bg-gray-100 p-10'>";
echo "    <div class='max-w-3xl mx-auto bg-white p-8 rounded-lg shadow-lg'>";
echo "        <h1 class='text-2xl font-bold mb-6'>Alumno: $nombre</h1>";
echo "        <h2 class='text-xl mb-4'>NC: $num_control</h2>";
echo "        <h2 class='text-xl mb-4'>Fecha: $fecha</h2>";

echo "        <h2 class='text-xl font-semibold mb-4'>Captura las calificaciones</h2>";
echo "        <table class='min-w-full table-auto bg-white border border-gray-300 rounded-md'>";
echo "            <thead>";
echo "                <tr class='bg-gray-200 text-gray-600 uppercase text-sm leading-normal'>";
echo "                    <th class='py-3 px-6'>Materia</th>";
echo "                    <th class='py-3 px-6'>Calificación</th>";
echo "                    <th class='py-3 px-6'>Maestro</th>"; // Nueva columna
echo "                </tr>";
echo "            </thead>";
echo "            <tbody>";

// Ciclo para imprimir las calificaciones y maestros
for ($i = 0; $i < count($calificaciones); $i++) {
    // Condición para poner en rojo materias reprobadas
    $color = $calificaciones[$i] <= 5 ? 'text-red-500' : 'text-gray-700';
    echo "                <tr>";
    echo "                    <td class='py-3 px-6 $color'>" . $materias[$i] . "</td>";
    echo "                    <td class='py-3 px-6 $color'>" . $calificaciones[$i] . "</td>";
    echo "                    <td class='py-3 px-6'>" . $maestros[$i] . "</td>"; // Nueva columna
    echo "                </tr>";
}

// Imprimir promedio, si es menor a 5 se pone rojo, sino es verde
$promedioColor = $promedio <= 5 ? 'text-red-500' : 'text-green-500';
echo "            </tbody>";
echo "        </table>";
echo "        <h2 class='text-xl font-bold $promedioColor mt-4'>Promedio = " . number_format($promedio, 2) . "</h2>";
echo "    </div>";
echo "</body>";
echo "</html>";
