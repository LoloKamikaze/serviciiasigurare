<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);


$servername = "localhost";
$username = "root";
$password = ""; 
$dbname = "info";
$port = 3306; 


$conn = new mysqli($servername, $username, $password, $dbname, $port);


if ($conn->connect_error) {
    die("Conexiune nereusita: " . $conn->connect_error);
}


$stmt = $conn->prepare("INSERT INTO rezultate (firstName, lastName, email, phone, question, contact) VALUES (?, ?, ?, ?, ?, ?)");
if (!$stmt) {
    die("Nereusit: " . $conn->error);
}
$stmt->bind_param("ssssss", $firstName, $lastName, $email, $phone, $question, $contact);


$firstName = $_POST['firstName'] ?? '';
$lastName = $_POST['lastName'] ?? '';
$email = $_POST['email'] ?? '';
$phone = $_POST['phone'] ?? '';
$question = $_POST['question'] ?? '';
$contact = $_POST['contact'] ?? '';

if ($stmt->execute()) {
    echo "Informatia a fost preluata cu succes!";
} else {
    echo "Eroare: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>
