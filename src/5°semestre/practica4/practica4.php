<?php
$aciertos = 0;

// Obtener las respuestas del formulario
$pregunta1 = $_POST["pregunta1"] ?? '';
$pregunta2 = $_POST["pregunta2"] ?? '';
$pregunta3 = $_POST["pregunta3"] ?? '';
$pregunta4 = $_POST["pregunta4"] ?? '';
$pregunta5 = $_POST["pregunta5"] ?? '';
$pregunta6 = $_POST["pregunta6"] ?? '';
$pregunta7 = $_POST["pregunta7"] ?? '';
$pregunta8 = $_POST["pregunta8"] ?? '';
$pregunta9 = $_POST["pregunta9"] ?? '';
$pregunta10 = $_POST["pregunta10"] ?? '';

// Validar las respuestas
echo "<div class='container mx-auto p-8 bg-white shadow-lg rounded-lg'>";

echo "<h1 class='text-2xl font-bold mb-6'>Resultados del Examen</h1>";

// Pregunta 1
echo "<h3 class='text-lg font-semibold'>1. ¿En qué ciudad está la oficina de Dunder Mifflin?</h3>";
echo "<p class='mb-2'>Respuesta seleccionada: $pregunta1</p>";
if (strtolower($pregunta1) == "scranton") {
    $aciertos++;
    echo "<img src='correcta.png' width='50px' class='mb-2'><hr>";
} else {
    echo "<img src='incorrecta.png' width='50px' class='mb-2'><hr>";
}

// Pregunta 2
echo "<h3 class='text-lg font-semibold'>2. ¿Quién es el gerente regional de la sucursal de Scranton?</h3>";
echo "<p class='mb-2'>Respuesta seleccionada: $pregunta2</p>";
if (strtolower($pregunta2) == "michael scott") {
    $aciertos++;
    echo "<img src='correcta.png' width='50px' class='mb-2'><hr>";
} else {
    echo "<img src='incorrecta.png' width='50px' class='mb-2'><hr>";
}

// Pregunta 3
echo "<h3 class='text-lg font-semibold'>3. ¿Quién es el asistente del gerente regional?</h3>";
if (isset($_POST['pregunta3'])) {
    $respuesta3 = $_POST['pregunta3'];
    if ($respuesta3 == "Dwight Schrute") {
        $aciertos++;
        echo "<img src='correcta.png' width='50px' class='mb-2'><hr>";
    } else {
        echo "<img src='incorrecta.png' width='50px' class='mb-2'><hr>";
    }
}

// Pregunta 4
echo "<h3 class='text-lg font-semibold'>4. ¿Cómo se llama la recepcionista de Dunder Mifflin?</h3>";
echo "<p class='mb-2'>Respuesta seleccionada: $pregunta4</p>";
if (strtolower($pregunta4) == "pam beesly") {
    $aciertos++;
    echo "<img src='correcta.png' width='50px' class='mb-2'><hr>";
} else {
    echo "<img src='incorrecta.png' width='50px' class='mb-2'><hr>";
}

// Pregunta 5
echo "<h3 class='text-lg font-semibold'>5. ¿Qué producto vende Dunder Mifflin?</h3>";
echo "<p class='mb-2'>Respuesta seleccionada: $pregunta5</p>";
if (strtolower($pregunta5) == "papel") {
    $aciertos++;
    echo "<img src='correcta.png' width='50px' class='mb-2'><hr>";
} else {
    echo "<img src='incorrecta.png' width='50px' class='mb-2'><hr>";
}

// Pregunta 6
echo "<h3 class='text-lg font-semibold'>6. ¿Cómo se llama el jefe de contabilidad?</h3>";
echo "<p class='mb-2'>Respuesta seleccionada: $pregunta6</p>";
if (strtolower($pregunta6) == "kevin malone") {
    $aciertos++;
    echo "<img src='correcta.png' width='50px' class='mb-2'><hr>";
} else {
    echo "<img src='incorrecta.png' width='50px' class='mb-2'><hr>";
}

// Pregunta 7
echo "<h3 class='text-lg font-semibold'>7. ¿Quién creó el programa “Threat Level Midnight”?</h3>";
echo "<p class='mb-2'>Respuesta seleccionada: $pregunta7</p>";
if (strtolower($pregunta7) == "michael scott") {
    $aciertos++;
    echo "<img src='correcta.png' width='50px' class='mb-2'><hr>";
} else {
    echo "<img src='incorrecta.png' width='50px' class='mb-2'><hr>";
}

// Pregunta 8
echo "<h3 class='text-lg font-semibold'>8. ¿Quién es el jefe de recursos humanos en la oficina de Scranton?</h3>";
echo "<p class='mb-2'>Respuesta seleccionada: $pregunta8</p>";
if (strtolower($pregunta8) == "toby flenderson") {
    $aciertos++;
    echo "<img src='correcta.png' width='50px' class='mb-2'><hr>";
} else {
    echo "<img src='incorrecta.png' width='50px' class='mb-2'><hr>";
}

// Pregunta 9
echo "<h3 class='text-lg font-semibold'>9. ¿Cómo se llama la compañía que intenta comprar a Dunder Mifflin?</h3>";
echo "<p class='mb-2'>Respuesta seleccionada: $pregunta9</p>";
if (strtolower($pregunta9) == "sabre") {
    $aciertos++;
    echo "<img src='correcta.png' width='50px' class='mb-2'><hr>";
} else {
    echo "<img src='incorrecta.png' width='50px' class='mb-2'><hr>";
}

// Pregunta 10
echo "<h3 class='text-lg font-semibold'>10. ¿Qué deporte juega Jim en su tiempo libre?</h3>";
echo "<p class='mb-2'>Respuesta seleccionada: $pregunta10</p>";
if (strtolower($pregunta10) == "baloncesto") {
    $aciertos++;
    echo "<img src='correcta.png' width='50px' class='mb-2'><hr>";
} else {
    echo "<img src='incorrecta.png' width='50px' class='mb-2'><hr>";
}

echo "<h2 class='text-xl font-bold'>CALIFICACIÓN FINAL = " . ($aciertos * 10) . "%</h2>";
echo "</div>";

