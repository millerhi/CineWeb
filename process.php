<?php
// Conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "res_limpieza";

$conn = new mysqli($servername, $username, $password, $dbname);

// Verificación de la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Procesar el formulario
if (isset($_POST['submit'])) {
    $fecha = $_POST['fecha'];
    $equipo = $_POST['equipo'];
    $detergente = $_POST['detergente'];
    $realizadoPor = $_POST['realizadoPor'];
    $aprobadoPor = $_POST['aprobadoPor'];

    // Insertar el nuevo registro en la base de datos
    $sql = "INSERT INTO RegistroLimpieza (Fecha, Equipo, DetergenteUtilizado, RealizadoPor, AprobadoPor)
            VALUES ('$fecha', '$equipo', '$detergente', '$realizadoPor', '$aprobadoPor')";

    if ($conn->query($sql) === TRUE) {
        echo "Registro creado exitosamente";
        // Redireccionar al inicio después de 2 segundos
        echo '<script>
                setTimeout(function(){
                    window.location.href = "index.php";
                }, 1000);  
              </script>';
              // en linea 33 del codigo puedes cambiar el tiempo de redireccion en convercion de mil ejemplo 2 segundos = 2000
              // Tambien refresca la pagina automaticamente 
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

$sql = "SELECT * FROM RegistroLimpieza";
$result = $conn->query($sql);

if ($result->num_rows > 0) {

 

    echo '</tbody></table>';
} else {
    echo "No hay registros";
}

// Cerrar la conexión
$conn->close();
?>
