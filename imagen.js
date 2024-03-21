// Obtén la imagen por su ID
var imagen = document.getElementById('Foto');

// Almacena la URL de la imagen original
var urlOriginal = imagen.src;

// Agrega un evento de mouseover a la imagen
imagen.addEventListener('mouseover', function () {
    // Cambia el atributo src de la imagen
    imagen.src = 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Daredevil_C2E2_2016_%2825328511184%29.jpg/1200px-Daredevil_C2E2_2016_%2825328511184%29.jpg';
});

// Agrega un evento de mouseout a la imagen
imagen.addEventListener('mouseout', function () {
    // Restaura la URL de la imagen original
    imagen.src = urlOriginal;
});