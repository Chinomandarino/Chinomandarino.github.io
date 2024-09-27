// Función para ocultar y mostrar el bloque
function toggleVisibility() {
  const block = document.getElementById("customBlock");
  block.classList.toggle("hidden");
}

// Función para cambiar el color de fondo del bloque
function changeBlockColor() {
  const block = document.getElementById("customBlock");
  const colors = [
    "bg-blue-100",
    "bg-green-100",
    "bg-red-100",
    "bg-yellow-100",
    "bg-purple-100",
  ];

  // Limpiar colores anteriores
  colors.forEach((color) => block.classList.remove(color));

  // Seleccionar un color aleatorio
  const randomColor = colors[Math.floor(Math.random() * colors.length)];
  block.classList.add(randomColor);
}

// Función para cambiar el color del texto
function changeTextColor() {
  const text = document.getElementById("blockText");
  const colors = [
    "text-blue-500",
    "text-red-500",
    "text-green-500",
    "text-yellow-500",
    "text-purple-500",
  ];

  // Limpiar colores anteriores
  colors.forEach((color) => text.classList.remove(color));

  // Seleccionar un color aleatorio
  const randomColor = colors[Math.floor(Math.random() * colors.length)];
  text.classList.add(randomColor);
}

// Función para cambiar la imagen
function changeImage() {
  const image = document.getElementById("customImage");
  const images = [
    "https://via.placeholder.com/150/0000FF/808080",
    "https://via.placeholder.com/150/FF0000/FFFFFF",
    "https://via.placeholder.com/150/00FF00/000000",
    "https://via.placeholder.com/150/FFFF00/000000",
    "https://via.placeholder.com/150/FF00FF/000000",
  ];

  // Seleccionar una imagen aleatoria
  const randomImage = images[Math.floor(Math.random() * images.length)];
  image.src = randomImage;
}

// Función para cambiar el texto del bloque
function updateBlockText() {
  const inputText = document.getElementById("customTextInput").value;
  const blockText = document.getElementById("blockText");

  // Actualizar el texto del bloque
  blockText.textContent = inputText
    ? inputText
    : "El texto no puede estar vacío.";
}

// Función para cambiar el tamaño del texto
function changeTextSize() {
  const text = document.getElementById("blockText");
  const sizes = ["text-sm", "text-lg", "text-xl", "text-2xl", "text-4xl"];

  // Limpiar tamaños anteriores
  sizes.forEach((size) => text.classList.remove(size));

  // Seleccionar un tamaño aleatorio
  const randomSize = sizes[Math.floor(Math.random() * sizes.length)];
  text.classList.add(randomSize);
}
