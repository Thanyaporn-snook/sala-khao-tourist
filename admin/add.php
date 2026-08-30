<?php
session_start();
require_once '../db_connect.php';

if (!isset($_SESSION['admin_logged_in'])) { header("Location: login.php"); exit(); }

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $title = $_POST['title'];
    $description = $_POST['description'];
    $location = $_POST['location']; // รับค่าที่ตั้ง
    $highlight_info = $_POST['highlight_info']; // รับค่าราคา/เมนู
    $category = $_POST['category'];
    
    $image_name = '';
    if (isset($_FILES['image']) && $_FILES['image']['error'] == 0) {
        $ext = pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION);
        $image_name = time() . '.' . $ext;
        move_uploaded_file($_FILES['image']['tmp_name'], "../uploads/" . $image_name);
    }

    $stmt = $conn->prepare("INSERT INTO items (title, description, location, highlight_info, image_name, category) VALUES (?, ?, ?, ?, ?, ?)");
    $stmt->execute([$title, $description, $location, $highlight_info, $image_name, $category]);

    header("Location: dashboard.php");
    exit();
}
?>
<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <title>เพิ่มข้อมูล | Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background-color: #f4f6f9;">
<div class="container mt-5" style="max-width: 800px;">
    <h2>+ เพิ่มข้อมูลใหม่</h2>
    <div class="card p-4 mt-4 shadow-sm border-0">
        <form method="post" enctype="multipart/form-data">
            <div class="mb-3">
                <label class="form-label">ชื่อสถานที่ / ร้านอาหาร / สินค้า</label>
                <input type="text" name="title" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">รายละเอียด</label>
                <textarea name="description" class="form-control" rows="3" required></textarea>
            </div>
            
            <!-- ส่วนที่เพิ่มมาใหม่ 2 ช่อง -->
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label class="form-label text-primary fw-bold">📍 ที่ตั้ง / พิกัด</label>
                    <input type="text" name="location" class="form-control" placeholder="เช่น ม.1 ต.ศาลาขาว">
                </div>
                <div class="col-md-6 mb-3">
                    <label class="form-label text-danger fw-bold">⭐ เมนูแนะนำ / ราคา</label>
                    <input type="text" name="highlight_info" class="form-control" placeholder="เช่น กุ้งเผา หรือ ชุดละ 100 บาท">
                </div>
            </div>

            <div class="row">
                <div class="col-md-6 mb-3">
                    <label class="form-label">หมวดหมู่</label>
                    <select name="category" class="form-select" required>
                        <option value="tourist">สถานที่ท่องเที่ยว</option>
                        <option value="restaurant">ร้านอาหาร</option>
                        <option value="otop">สินค้า OTOP</option>
                    </select>
                </div>
                <div class="col-md-6 mb-4">
                    <label class="form-label">อัปโหลดรูปภาพ</label>
                    <input type="file" name="image" class="form-control" accept="image/*" required>
                </div>
            </div>
            <button type="submit" class="btn btn-success px-4 w-100">บันทึกข้อมูล</button>
            <div class="text-center mt-3"><a href="dashboard.php" class="text-muted">ยกเลิก กลับไปหน้าจัดการ</a></div>
        </form>
    </div>
</div>
</body>
</html>