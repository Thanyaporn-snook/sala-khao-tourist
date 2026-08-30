<?php
session_start(); // เปิดใช้งานระบบจดจำผู้ใช้
require_once '../db_connect.php'; // ย้อนกลับไป 1 โฟลเดอร์เพื่อดึงไฟล์ฐานข้อมูลมาใช้

// ถ้าเคยล็อกอินผ่านแล้ว ให้เด้งไปหน้าจัดการข้อมูลเลย
if (isset($_SESSION['admin_logged_in'])) {
    header("Location: dashboard.php");
    exit();
}

$error = '';

// เมื่อมีการกดปุ่ม "เข้าสู่ระบบ" (ฟอร์มถูกส่งมาแบบ POST)
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // เอา username/password ไปเช็คในฐานข้อมูล
    $stmt = $conn->prepare("SELECT * FROM admin_users WHERE username = ? AND password = ?");
    $stmt->execute([$username, $password]);
    
    if ($stmt->rowCount() > 0) {
        // ถ้ารหัสถูก! ประทับตรายืนยัน แล้วส่งไปหน้า dashboard
        $_SESSION['admin_logged_in'] = true;
        $_SESSION['username'] = $username;
        header("Location: dashboard.php");
        exit();
    } else {
        // ถ้ารหัสผิด
        $error = 'ชื่อผู้ใช้ หรือ รหัสผ่านไม่ถูกต้อง!';
    }
}
?>
<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <title>เข้าสู่ระบบ | Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { background-color: #f4f6f9; display: flex; align-items: center; justify-content: center; height: 100vh; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;}
        .login-card { width: 400px; padding: 40px; border-radius: 15px; box-shadow: 0 10px 30px rgba(0,0,0,0.1); background: white; }
    </style>
</head>
<body>

<div class="login-card">
    <h3 class="text-center mb-4 text-success fw-bold">จัดการหลังบ้านศาลาขาว</h3>
    
    <!-- ถ้าใส่รหัสผิดให้โชว์กล่องแดงๆ ตรงนี้ -->
    <?php if($error != ''): ?>
        <div class="alert alert-danger py-2"><?php echo $error; ?></div>
    <?php endif; ?>

    <form method="post">
        <div class="mb-3">
            <label class="form-label text-muted">ชื่อผู้ใช้ (Username)</label>
            <input type="text" name="username" class="form-control" required placeholder="แอบบอกใบ้: admin">
        </div>
        <div class="mb-4">
            <label class="form-label text-muted">รหัสผ่าน (Password)</label>
            <input type="password" name="password" class="form-control" required placeholder="แอบบอกใบ้: 123456">
        </div>
        <button type="submit" class="btn btn-success w-100 py-2 fw-bold">เข้าสู่ระบบ</button>
        <div class="text-center mt-4">
            <a href="../index.php" class="text-muted text-decoration-none">← กลับไปหน้าหลักของตำบล</a>
        </div>
    </form>
</div>

</body>
</html>