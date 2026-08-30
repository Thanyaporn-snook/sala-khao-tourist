<?php
session_start();
require_once '../db_connect.php';

if (!isset($_SESSION['admin_logged_in'])) { header("Location: login.php"); exit(); }

$stmt = $conn->query("SELECT * FROM items ORDER BY id DESC");
$items = $stmt->fetchAll(PDO::FETCH_ASSOC);
$total_items = count($items);
?>
<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard | ศาลาขาว</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Prompt:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style> 
        body { font-family: 'Prompt', sans-serif; background-color: #f0f2f5; } 
        .navbar-custom { background: linear-gradient(135deg, #1e293b 0%, #0f172a 100%); box-shadow: 0 4px 12px rgba(0,0,0,0.1); }
        .table-card { border-radius: 20px; box-shadow: 0 8px 24px rgba(149, 157, 165, 0.1); overflow: hidden; border: none; }
        .table-hover tbody tr:hover { background-color: #f8fafc; }
    </style>
</head>
<body>

<!-- Navbar แบบพรีเมียม -->
<nav class="navbar navbar-expand-lg navbar-dark navbar-custom py-3">
  <div class="container-fluid px-4">
    <a class="navbar-brand fw-bold" href="dashboard.php">
        <i class="fa-solid fa-gauge-high text-warning me-2"></i> SALA KHAO ADMIN
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav me-auto ms-3">
        <!-- ไฮไลท์สีเหลืองว่าอยู่หน้า จัดการสถานที่ -->
        <li class="nav-item"><a class="nav-link active text-warning fw-bold" href="dashboard.php"><i class="fa-solid fa-list me-1"></i> จัดการสถานที่/สินค้า</a></li>
        <li class="nav-item"><a class="nav-link" href="manage_reviews.php"><i class="fa-solid fa-comments me-1"></i> จัดการรีวิว</a></li>
        <li class="nav-item"><a class="nav-link" href="../index.php" target="_blank"><i class="fa-solid fa-earth-asia me-1"></i> ดูหน้าเว็บจริง</a></li>
      </ul>
      <div class="d-flex align-items-center">
          <span class="text-light me-3"><i class="fa-regular fa-circle-user me-1"></i> ยินดีต้อนรับ, Admin</span>
          <a href="logout.php" class="btn btn-danger btn-sm rounded-pill px-3"><i class="fa-solid fa-right-from-bracket me-1"></i> ออกจากระบบ</a>
      </div>
    </div>
  </div>
</nav>

<div class="container-fluid px-4 py-5">
    <!-- ตารางข้อมูลหลัก (ตัดสถิติออกแล้ว) -->
    <div class="card table-card">
        <div class="card-header bg-white py-3 d-flex justify-content-between align-items-center border-bottom-0">
            <h5 class="m-0 fw-bold text-primary"><i class="fa-solid fa-list-check me-2"></i> รายการข้อมูลทั้งหมด (<?php echo $total_items; ?> รายการ)</h5>
            <a href="add.php" class="btn btn-primary rounded-pill px-4 fw-bold shadow-sm"><i class="fa-solid fa-plus me-1"></i> เพิ่มข้อมูลใหม่</a>
        </div>
        <div class="card-body p-0">
            <div class="table-responsive">
                <table class="table table-hover align-middle mb-0">
                    <thead class="table-light text-muted">
                        <tr>
                            <th class="ps-4">รูปภาพ</th>
                            <th>ชื่อสถานที่/สินค้า</th>
                            <th>หมวดหมู่</th>
                            <th class="text-center pe-4">จัดการ</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($items as $row): ?>
                        <?php 
                            $img_src = (strpos($row['image_name'], 'http') === 0) ? $row['image_name'] : '../uploads/' . $row['image_name'];
                            if($row['category'] == 'tourist') $cat_badge = '<span class="badge bg-primary-subtle text-primary border border-primary px-3 py-2 rounded-pill"><i class="fa-solid fa-location-dot"></i> ท่องเที่ยว</span>';
                            elseif($row['category'] == 'restaurant') $cat_badge = '<span class="badge bg-danger-subtle text-danger border border-danger px-3 py-2 rounded-pill"><i class="fa-solid fa-utensils"></i> ร้านอาหาร</span>';
                            else $cat_badge = '<span class="badge bg-warning-subtle text-dark border border-warning px-3 py-2 rounded-pill"><i class="fa-solid fa-store"></i> OTOP</span>';
                        ?>
                        <tr>
                            <td class="ps-4 py-3"><img src="<?php echo $img_src; ?>" width="90" height="60" style="object-fit: cover;" class="rounded-3 shadow-sm"></td>
                            <td class="fw-bold text-dark fs-5"><?php echo htmlspecialchars($row['title']); ?></td>
                            <td><?php echo $cat_badge; ?></td>
                            <td class="text-center pe-4">
                                <a href="edit.php?id=<?php echo $row['id']; ?>" class="btn btn-light btn-sm text-primary border shadow-sm rounded-3 me-2 px-3"><i class="fa-solid fa-pen-to-square"></i> แก้ไข</a>
                                <a href="delete.php?id=<?php echo $row['id']; ?>" class="btn btn-light btn-sm text-danger border shadow-sm rounded-3 px-3" onclick="return confirm('แน่ใจนะครับว่าจะลบข้อมูลนี้?');"><i class="fa-solid fa-trash"></i> ลบ</a>
                            </td>
                        </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>