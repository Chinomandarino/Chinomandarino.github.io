<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultado del Juego del Gato</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <style>
        .cell {
            font-size: 2rem;
            font-weight: bold;
            transition: background-color 0.3s, transform 0.3s;
        }

        .cell.X {
            color: #f56565;
            /* Color rojo para X */
        }

        .cell.O {
            color: #68d391;
            /* Color verde para O */
        }

        .winner {
            font-size: 2rem;
            font-weight: bold;
        }
    </style>
</head>

<body class="flex flex-col items-center justify-center min-h-screen bg-gray-100 font-sans p-6">
    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $jugador1 = htmlspecialchars($_POST["jugador1"]);
        $jugador2 = htmlspecialchars($_POST["jugador2"]);
        $gameData = json_decode($_POST["gameData"], true);

        // Función para verificar el ganador
        function checkWinner($gameData)
        {
            $winningCombos = [
                [0, 1, 2], // Fila 1
                [3, 4, 5], // Fila 2
                [6, 7, 8], // Fila 3
                [0, 3, 6], // Columna 1
                [1, 4, 7], // Columna 2
                [2, 5, 8], // Columna 3
                [0, 4, 8], // Diagonal 1
                [2, 4, 6]  // Diagonal 2
            ];

            foreach ($winningCombos as $combo) {
                $a = $gameData[$combo[0]];
                $b = $gameData[$combo[1]];
                $c = $gameData[$combo[2]];
                if ($a === $b && $b === $c && $a !== '') {
                    return $a;
                }
            }
            return null;
        }

        $winner = checkWinner($gameData);

        echo "<div class='bg-white p-6 rounded-lg shadow-md mb-4 w-full max-w-md'>";
        echo "<h1 class='text-3xl font-bold mb-4'>Jugador 1 (X): " . $jugador1 . "</h1>";
        echo "<h1 class='text-3xl font-bold mb-4'>Jugador 2 (O): " . $jugador2 . "</h1>";

        echo "<h2 class='text-2xl font-semibold mb-4'>Tablero del Juego:</h2>";
        echo "<div class='grid grid-cols-3 gap-2 border border-gray-300 p-2 rounded-md bg-white'>";
        foreach ($gameData as $cell) {
            $cellClass = htmlspecialchars($cell) === 'X' ? 'cell X' : (htmlspecialchars($cell) === 'O' ? 'cell O' : 'cell');
            echo "<div class='w-16 h-16 border border-gray-300 rounded-md flex items-center justify-center " . $cellClass . "'>" . htmlspecialchars($cell) . "</div>";
        }
        echo "</div>";

        if ($winner) {
            echo "<h2 class='winner text-3xl font-bold mt-4'>¡Ganador: " . ($winner === 'X' ? $jugador1 : $jugador2) . "!</h2>";
        } else {
            echo "<h2 class='text-2xl font-semibold mt-4'>¡Empate!</h2>";
        }

        echo "</div>";

        // Botón para volver a jugar
        echo "<form action='Practica3.html' method='get' class='mt-4'>";
        echo "<button type='submit' class='bg-blue-500 text-white py-2 px-4 rounded-md hover:bg-blue-600'>Volver a Jugar</button>";
        echo "</form>";
    }
    ?>
</body>

</html>