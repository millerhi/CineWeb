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

// Procesar la búsqueda
if (isset($_GET['buscarBtn'])) {
    $terminoBusqueda = $_GET['buscar'];

    // Verificar si el término de búsqueda tiene el formato de fecha (dd/mm/yyyy o dd-mm-yyyy)
    $formatoFecha = '/^(\d{2}\/\d{2}\/\d{4}|\d{2}-\d{2}-\d{4})$/';
    if (preg_match($formatoFecha, $terminoBusqueda)) {
        // Convertir la fecha al formato de la base de datos (yyyy-mm-dd)
        $fechaFormateada = date('Y-m-d', strtotime(str_replace(['/', '-'], '-', $terminoBusqueda)));
        $sql = "SELECT * FROM RegistroLimpieza WHERE Fecha LIKE '%$fechaFormateada%'";
    } else {
        // Si no es una fecha, realizar la búsqueda en otros campos
        $sql = "SELECT * FROM RegistroLimpieza 
                WHERE Fecha LIKE '%$terminoBusqueda%' 
                   OR Equipo LIKE '%$terminoBusqueda%' 
                   OR DetergenteUtilizado LIKE '%$terminoBusqueda%' 
                   OR RealizadoPor LIKE '%$terminoBusqueda%' 
                   OR AprobadoPor LIKE '%$terminoBusqueda%'";
    }

    $result = $conn->query($sql);
    // los datos se muestran en una tabla 
    if ($result->num_rows > 0) {
        echo '<table>';
        echo '<thead><tr><th>Fecha</th><th>Equipo</th><th>Detergente Utilizado</th><th>Realizado Por</th><th>Aprobado Por</th></tr></thead>';
        echo '<tbody>';

        while ($row = $result->fetch_assoc()) {
            echo '<tr>';
            echo '<td>' . $row['Fecha'] . '</td>';
            echo '<td>' . $row['Equipo'] . '</td>';
            echo '<td>' . $row['DetergenteUtilizado'] . '</td>';
            echo '<td>' . $row['RealizadoPor'] . '</td>';
            echo '<td>' . $row['AprobadoPor'] . '</td>';
            echo '</tr>';
        }

        echo '</tbody></table>';
    } else {
        echo "No hay registros que coincidan con el término de búsqueda.";
    }
} else {
    // Mostrar todos los registros si no hay término de búsqueda
    $sql = "SELECT * FROM RegistroLimpieza";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        echo '<table>';
        echo '<thead><tr><th>Fecha</th><th>Equipo</th><th>Detergente Utilizado</th><th>Realizado Por</th><th>Aprobado Por</th></tr></thead>';
        echo '<tbody>';

        while ($row = $result->fetch_assoc()) {
            echo '<tr>';
            echo '<td>' . $row['Fecha'] . '</td>';
            echo '<td>' . $row['Equipo'] . '</td>';
            echo '<td>' . $row['DetergenteUtilizado'] . '</td>';
            echo '<td>' . $row['RealizadoPor'] . '</td>';
            echo '<td>' . $row['AprobadoPor'] . '</td>';
            echo '</tr>';
        }

        echo '</tbody></table>';
    } else {
        echo "No hay registros";
    }
}



// Cerrar la conexión
$conn->close();
?>
