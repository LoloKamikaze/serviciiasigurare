<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);


$servername = "localhost";
$username = "root";
$password = ""; 
$dbname = "casco";
$port = 3306; 


$conn = new mysqli($servername, $username, $password, $dbname, $port);


if ($conn->connect_error) {
    die("Conexiune nereusita: " . $conn->connect_error);
}


$stmt = $conn->prepare("INSERT INTO vehicule (masina, producere, pretul, experienta, nrcontact, adresa) VALUES (?, ?, ?, ?, ?, ?)");
if (!$stmt) {
    die("Nereusit: " . $conn->error);
}
$stmt->bind_param("ssssss", $masina, $producere, $pretul, $experienta, $nrcontact, $adresa);


$masina = $_POST['masina'] ?? '';
$producere = $_POST['producere'] ?? '';
$pretul = $_POST['pretul'] ?? '';
$experienta = $_POST['experienta'] ?? '';
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
