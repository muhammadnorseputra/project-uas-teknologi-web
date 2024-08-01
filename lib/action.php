<?php

// Fungsi untuk membersihkan data input
function Filter($data)
{
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Mendapatkan semua input dari form

    $nama = Filter($_POST["nama"]);
    $email = Filter($_POST["email"]);
    $nohp = Filter($_POST["nohp"]);
    $pesan = Filter($_POST["pesan"]);

    try {
        // Membuat koneksi ke database SQLite
        // $db = new PDO('sqlite:../MyProfile.db');

        // Membuat koneksi ke database phpmyadmin
        $db = new PDO("mysql:host=localhost;dbname=cv_putra", "root", "");
    
        // Mengatur mode error PDO ke exception
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        // Menyiapkan statement SQL untuk memasukkan data
        $stmt = $db->prepare("INSERT INTO `contact` (nama, email, nohp, pesan) VALUES (:nama, :email, :nohp, :pesan)");

        // Mengikat parameter ke statement SQL
        $stmt->bindParam(':nama', $nama);
        $stmt->bindParam(':email', $email);
        $stmt->bindParam(':nohp', $nohp);
        $stmt->bindParam(':pesan', $pesan);

        // Menjalankan statement SQL
        $stmt->execute();

        $msg = ["status" => true, "msg" => "Data inserted successfully."];
    } catch (PDOException $e) {
        $msg = ["status" => false, "msg" => "Error: " . $e->getMessage()];
    }

    // Mengatur header untuk JSON
    header('Content-Type: application/json');
    echo json_encode($msg);
}