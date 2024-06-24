<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);


$servername = "localhost";
$username = "root";
$password = ""; 
$dbname = "asigurare1";
$port = 3306; 


$conn = new mysqli($servername, $username, $password, $dbname, $port);


if ($conn->connect_error) {
    die("Conexiune nereusita: " . $conn->connect_error);
}


$stmt = $conn->prepare("INSERT INTO carteverde (IDNP, numarcertificat, numarinmatriculare, zonadeplasare, perioadaasigurare, nrcontact, adresa) VALUES (?, ?, ?, ?, ?, ?, ?)");
if (!$stmt) {
    die("Nereusit: " . $conn->error);
}
$stmt->bind_param("sssssss", $IDNP, $numarcertificat, $numarinmatriculare, $zonadeplasare, $perioadaasigurare, $nrcontact, $adresa);


$IDNP = $_POST['IDNP'] ?? '';
$numarcertificat = $_POST['numarcertificat'] ?? '';
$numarinmatriculare = $_POST['numarinmatriculare'] ?? '';
$zonadeplasare = $_POST['zonadeplasare'] ?? '';
$perioadaasigurare = $_POST['perioadaasigurare'] ?? '';
$nrcontact = $_POST['nrcontact'] ?? '';
$adresa = $_POST['adresa'] ?? '';

if ($stmt->execute()) {
    echo "Informatia a fost preluata cu succes!";
} else {
    echo "Eroare: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>
