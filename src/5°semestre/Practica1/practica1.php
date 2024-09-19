<?php
$nombre = $_GET["nombre"];
$edad = $_GET["edad"];
$escuela = $_GET["escuela"];

// Determina si la persona es mayor de edad
$isAdult = $edad > 18;
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Resultado del Formulario</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet" />
</head>

<body class="bg-gray-100 flex items-center justify-center h-screen">
    <div class="bg-white p-8 rounded-lg shadow-lg max-w-2xl w-full">
        <h1 class="text-3xl font-bold mb-4 text-center <?php echo $isAdult ? 'text-green-600' : 'text-red-600'; ?>">
            <?php echo htmlspecialchars($nombre) . ($isAdult ? " es mayor de edad" : " NO es mayor de edad"); ?>
        </h1>
        <div class="mb-4">
            <h2 class="text-xl font-semibold text-gray-800">Nombre del Alumno:</h2>
            <p class="text-lg text-gray-600"><?php echo htmlspecialchars($nombre); ?></p>
        </div>
        <div class="mb-4">
            <h2 class="text-xl font-semibold text-gray-800">Edad:</h2>
            <p class="text-lg text-gray-600"><?php echo htmlspecialchars($edad); ?></p>
        </div>
        <div class="mb-4">
            <h2 class="text-xl font-semibold text-gray-800">Escuela:</h2>
            <p class="text-lg text-gray-600"><?php echo htmlspecialchars($escuela); ?></p>
        </div>
        <div class="text-center mt-6">
            <h1 class="text-2xl font-bold text-blue-600">¡Vivan los chilaquiles!</h1>
        </div>
    </div>
</body>

</html>