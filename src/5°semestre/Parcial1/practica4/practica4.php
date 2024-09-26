<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultados del Examen - The Office</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <style>
        .correcta {
            color: #38a169;
            /* Color verde para correcta */
        }

        .incorrecta {
            color: #e53e3e;
            /* Color rojo para incorrecta */
        }

        .respuesta {
            font-size: 1.25rem;
        }
    </style>
</head>

<body class="bg-gray-100">
    <div class="container mx-auto p-8">
        <?php
        function normalizeAnswer($answer)
        {
            // Convertir a minúsculas y eliminar acentos
            $answer = mb_strtolower(trim($answer), 'UTF-8');
            $answer = preg_replace('/[áàäâ]/u', 'a', $answer);
            $answer = preg_replace('/[éèëê]/u', 'e', $answer);
            $answer = preg_replace('/[íìïî]/u', 'i', $answer);
            $answer = preg_replace('/[óòöô]/u', 'o', $answer);
            $answer = preg_replace('/[úùüû]/u', 'u', $answer);
            $answer = preg_replace('/ç/u', 'c', $answer);
            return $answer;
        }

        function isCorrectAnswer($userAnswer, $correctAnswers)
        {
            $normalizedUserAnswer = normalizeAnswer($userAnswer);
            foreach ($correctAnswers as $correctAnswer) {
                if ($normalizedUserAnswer === normalizeAnswer($correctAnswer)) {
                    return true;
                }
            }
            return false;
        }

        $aciertos = 0;

        // Obtener las respuestas del formulario
        $preguntas = [
            'pregunta1' => $_POST["pregunta1"] ?? '',
            'pregunta2' => $_POST["pregunta2"] ?? '',
            'pregunta3' => $_POST["pregunta3"] ?? '',
            'pregunta4' => $_POST["pregunta4"] ?? '',
            'pregunta5' => $_POST["pregunta5"] ?? '',
            'pregunta6' => $_POST["pregunta6"] ?? '',
            'pregunta7' => $_POST["pregunta7"] ?? '',
            'pregunta8' => $_POST["pregunta8"] ?? '',
            'pregunta9' => $_POST["pregunta9"] ?? '',
            'pregunta10' => $_POST["pregunta10"] ?? ''
        ];

        // Respuestas correctas
        $respuestasCorrectas = [
            'pregunta1' => ['scranton'],
            'pregunta2' => ['michael scott', 'michael', 'scott', 'michel'],
            'pregunta3' => ['dwight schrute', 'dwight', 'schrute'],
            'pregunta4' => ['pam beesly', 'pam', 'beesly'],
            'pregunta5' => ['papel'],
            'pregunta6' => ['kevin malone', 'kevin', 'malone'],
            'pregunta7' => ['michael scott', 'michael', 'scott'],
            'pregunta8' => ['toby flenderson', 'toby', 'flenderson'],
            'pregunta9' => ['sabre'],
            'pregunta10' => ['baloncesto', 'basketball']
        ];

        // Validar las respuestas
        echo "<div class='bg-white shadow-lg rounded-lg p-6'>";
        echo "<h1 class='text-3xl font-bold mb-6 text-center'>Resultados del Examen</h1>";

        // Contenedor de cuadrícula para los resultados
        echo "<div class='grid grid-cols-1 md:grid-cols-2 gap-6'>";

        foreach ($preguntas as $preguntaKey => $respuesta) {
            $preguntaNum = str_replace('pregunta', '', $preguntaKey);
            $respuestasCorrectasParaPregunta = $respuestasCorrectas[$preguntaKey] ?? [];
            $respuesta = htmlspecialchars(trim($respuesta));

            echo "<div class='mb-6'>";
            echo "<h3 class='text-xl font-semibold mb-2'>Pregunta $preguntaNum</h3>";
            echo "<p class='respuesta mb-2'>Respuesta seleccionada: " . $respuesta . "</p>";

            // Si la pregunta tiene opciones múltiples, verificar la respuesta seleccionada
            if (in_array($preguntaKey, ['pregunta5', 'pregunta7', 'pregunta10'])) {
                if (isCorrectAnswer($respuesta, $respuestasCorrectasParaPregunta)) {
                    $aciertos++;
                    echo "<p class='correcta'>¡Correcta!</p>";
                    echo "<img src='correcta.png' width='50px' class='mb-2'>";
                } else {
                    echo "<p class='incorrecta'>Incorrecta. Las respuestas correctas son: " . implode(', ', $respuestasCorrectasParaPregunta) . "</p>";
                    echo "<img src='incorrecta.png' width='50px' class='mb-2'>";
                }
            } else { // Preguntas de texto
                if (isCorrectAnswer($respuesta, $respuestasCorrectasParaPregunta)) {
                    $aciertos++;
                    echo "<p class='correcta'>¡Correcta!</p>";
                    echo "<img src='correcta.png' width='50px' class='mb-2'>";
                } else {
                    echo "<p class='incorrecta'>Incorrecta. La respuesta correcta es: " . implode(', ', $respuestasCorrectasParaPregunta) . "</p>";
                    echo "<img src='incorrecta.png' width='50px' class='mb-2'>";
                }
            }
            echo "</div>";
        }

        echo "</div>"; // Cierre del contenedor de cuadrícula

        echo "<h2 class='text-2xl font-bold text-center mt-6'>CALIFICACIÓN FINAL = " . ($aciertos * 10) . "%</h2>";
        echo "</div>";
        ?>
    </div>
</body>

</html>