<?php
session_start();
require_once '../db_connect.php';

if (!isset($_SESSION['admin_logged_in'])) { header("Location: login.php"); exit(); }
if (!isset($_GET['id'])) { header("Location: dashboard.php"); exit(); }
$id = $_GET['id'];

// ดึงข้อมูลเดิมมาโชว์
$stmt = $conn->prepare("SELECT * FROM items WHERE id = ?");
$stmt->execute([$id]);
$item = $stmt->fetch(PDO::FETCH_ASSOC);

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $title = $_POST['title'];
    $description = $_POST['description'];
    $location = $_POST['location'];
    $highlight_info = $_POST['highlight_info'];
    $category = $_POST['category'];
    
    // อัปเดตข้อมูลตัวหนังสือ
    $stmt = $conn->prepare("UPDATE items SET title=?, description=?, location=?, highlight_info=?, category=? WHERE id=?");
    $stmt->execute([$title, $description, $location, $highlight_info, $category, $id]);
    
    // ถ้ายอมอัปโหลดรูปใหม่ด้วย
    if (isset($_FILES['image']) && $_FILES['image']['error'] == 0) {
        $ext = pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION);
        $image_name = time() . '.' . $ext;
        move_uploaded_file($_FILES['image']['tmp_name'], "../uploads/" . $image_name);
        
        $stmt = $conn->prepare("UPDATE items SET image_name=? WHERE id=?");
        $stmt->execute([$image_name, $id]);
    }
    header("Location: dashboard.php");
    exit();
}
?>
<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <title>แก้ไขข้อมูล | Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background-color: #f4f6f9;">
<div class="container mt-5" style="max-width: 800px;">
    <h2>✏️ แก้ไขข้อมูล</h2>
    <div class="card p-4 mt-4 shadow-sm border-0">
        <form method="post" enctype="multipart/form-data">
            <div class="mb-3">
                <label class="form-label">ชื่อสถานที่ / ร้านอาหาร / สินค้า</label>
                <!-- ดึงข้อมูลเก่ามาใส่ในช่องไว้รอเลย -->
                <input type="text" name="title" class="form-control" value="<?php echo htmlspecialchars($item['title']); ?>" required>
            </div>
            <div class="mb-3">
                <label class="form-label">รายละเอียด</label>
                <textarea name="description" class="form-control" rows="4" required><?php echo htmlspecialchars($item['description']); ?></textarea>
            </div>
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label class="form-label">ที่ตั้ง / พิกัด</label>
                    <input type="text" name="location" class="form-control" value="<?php echo htmlspecialchars($item['location']); ?>">
                </div>
                <div class="col-md-6 mb-3">
                    <label class="form-label">เมนูแนะนำ / ราคา</label>
                    <input type="text" name="highlight_info" class="form-control" value="<?php echo htmlspecialchars($item['highlight_info']); ?>">
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label class="form-label">หมวดหมู่</label>
                    <select name="category" class="form-select">
                        <option value="tourist" <?php if($item['category']=='tourist') echo 'selected'; ?>>สถานที่ท่องเที่ยว</option>
                        <option value="restaurant" <?php if($item['category']=='restaurant') echo 'selected'; ?>>ร้านอาหาร</option>
                        <option value="otop" <?php if($item['category']=='otop') echo 'selected'; ?>>สินค้า OTOP</option>
                    </select>
                </div>
                <div class="col-md-6 mb-4">
                    <label class="form-label text-danger">📸 เปลี่ยนรูปภาพใหม่ (ไม่เปลี่ยนไม่ต้องเลือก)</label>
                    <input type="file" name="image" class="form-control" accept="image/*">
                </div>
            </div>
            <button type="submit" class="btn btn-warning px-4 w-100 fw-bold">บันทึกการแก้ไข</button>
            <div class="text-center mt-3"><a href="dashboard.php" class="text-muted">ยกเลิก กลับไปหน้าจัดการ</a></div>
        </form>
    </div>
</div>
</body>
</html>