<?php
$host = "localhost";
$username = "root";
$password = "";
$database = "tourist_otop_db"; // ชื่อ Database ที่คุณเพิ่งสร้าง

try {
    // สร้างการเชื่อมต่อ
    $conn = new PDO("mysql:host=$host;dbname=$database;charset=utf8mb4", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // บรรทัดล่างนี้ เอาไว้ทดสอบว่าต่อติดไหม
    //echo "<h1>🎉 เย้! เชื่อมต่อฐานข้อมูลสำเร็จแล้วครับ!</h1>";
    
} catch(PDOException $e) {
    echo "<h1>❌ เชื่อมต่อไม่สำเร็จ: " . $e->getMessage() . "</h1>";
}
?>