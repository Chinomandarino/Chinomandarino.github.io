<?php

$jugador1 = $_POST["jugador1"];
$jugador2 = $_POST["jugador2"];
$gato = $_POST["gato"];
function verificarGanador($gato, $jugadorX, $jugadorO) {
    $combinaciones = [
        [0, 1, 2], // Fila superior
        [3, 4, 5], // Fila media
        [6, 7, 8], // Fila inferior
        [0, 3, 6], // Columna izquierda
        [1, 4, 7], // Columna media
        [2, 5, 8], // Columna derecha
        [0, 4, 8], // Diagonal principal
        [2, 4, 6]  // Diagonal secundaria
    ];

    foreach ($combinaciones as $combinacion) {
        if ($gato[$combinacion[0]] == $gato[$combinacion[1]] && $gato[$combinacion[1]] == $gato[$combinacion[2]]) {
            if ($gato[$combinacion[0]] == "X") {
                return "Ganador " . $jugadorX . " X";
            } elseif ($gato[$combinacion[0]] == "O") {
                return "Ganador " . $jugadorO . " O";
            }
        }
    }

    return "No hay ganador aún";
}

// Mostrar el resultado
$resultado = verificarGanador($gato, $jugador1, $jugador2);
echo "<h1>$resultado</h1>";

