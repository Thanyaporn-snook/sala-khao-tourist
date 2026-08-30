<?php
session_start();
require_once '../db_connect.php';

if (!isset($_SESSION['admin_logged_in'])) {
    header("Location: login.php");
    exit();
}

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    
    // ดึงชื่อไฟล์รูปภาพขึ้นมาก่อน เพื่อที่จะได้ไปตามลบไฟล์ทิ้งด้วย (จะได้ไม่เปลืองพื้นที่เซิร์ฟเวอร์)
    $stmt = $conn->prepare("SELECT image_name FROM items WHERE id = ?");
    $stmt->execute([$id]);
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
    
    if ($row && !empty($row['image_name'])) {
        // เช็คว่าไม่ใช่รูปลิงก์จากเน็ต (ที่ผมแจกให้ตอนแรก) ถึงจะสั่งลบไฟล์
        if (strpos($row['image_name'], 'http') !== 0) {
            $file_path = "../uploads/" . $row['image_name'];
            if (file_exists($file_path)) {
                unlink($file_path); // คำสั่ง PHP สำหรับลบไฟล์ออกจากเครื่อง
            }
        }
    }
    
    // ลบข้อมูลแถวนั้นออกจากตารางฐานข้อมูล
    $del_stmt = $conn->prepare("DELETE FROM items WHERE id = ?");
    $del_stmt->execute([$id]);
}

header("Location: dashboard.php");
exit();
?>