<?php

$nombre = $_GET["nombre"];
$edad = $_GET["edad"];
$escuela = $_GET["escuela"]; 

// Obtienen los valores
if ($edad > 18) {
    echo "<h1>" . htmlspecialchars($nombre) . " es mayor de edad</h1>";
} else {
    echo "<h1>" . htmlspecialchars($nombre) . " NO es mayor de edad</h1>";
}

echo "<h1>Nombre del Alumno: " . htmlspecialchars($nombre) . "</h1>";
echo "<h2>Edad: " . htmlspecialchars($edad) . "</h2>";
echo "<h2>Escuela: " . htmlspecialchars($escuela) . "</h2>"; 
echo "<h1>vivan los chilaquiles wuuuuuu</h1>";


    