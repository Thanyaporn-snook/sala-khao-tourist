<?php
session_start();
require_once '../db_connect.php';

if (!isset($_SESSION['admin_logged_in'])) { header("Location: login.php"); exit(); }

if (isset($_GET['delete_id'])) {
    $delete_id = $_GET['delete_id'];
    $stmt = $conn->prepare("DELETE FROM reviews WHERE id = ?");
    $stmt->execute([$delete_id]);
    header("Location: manage_reviews.php");
    exit();
}

$sql = "SELECT r.*, i.title as item_title 
        FROM reviews r 
        JOIN items i ON r.item_id = i.id 
        ORDER BY r.created_at DESC";
$stmt = $conn->query($sql);
$reviews = $stmt->fetchAll(PDO::FETCH_ASSOC);
$total_reviews = count($reviews);
?>
<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <title>จัดการรีวิว | ศาลาขาว</title>
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

<!-- Navbar แบบพรีเมียม (ก๊อปมาให้เหมือนกัน 100% เลยครับ จะได้ไม่ขยับ) -->
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
        <li class="nav-item"><a class="nav-link" href="dashboard.php"><i class="fa-solid fa-list me-1"></i> จัดการสถานที่/สินค้า</a></li>
        <!-- ไฮไลท์สีเหลือง ย้ายมาอยู่หน้า จัดการรีวิว แทน -->
        <li class="nav-item"><a class="nav-link active text-warning fw-bold" href="manage_reviews.php"><i class="fa-solid fa-comments me-1"></i> จัดการรีวิว</a></li>
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
    <!-- ตารางรีวิว -->
    <div class="card table-card">
        <div class="card-header bg-white py-3 d-flex justify-content-between align-items-center border-bottom-0">
            <h5 class="m-0 fw-bold text-success"><i class="fa-solid fa-comments me-2"></i> รายการรีวิวจากผู้ใช้งาน (<?php echo $total_reviews; ?> รายการ)</h5>
        </div>
        <div class="card-body p-0">
            <div class="table-responsive">
                <table class="table table-hover align-middle mb-0">
                    <thead class="table-light text-muted">
                        <tr>
                            <th class="ps-4" width="15%">วันที่</th>
                            <th width="20%">สถานที่/สินค้า</th>
                            <th width="15%">ชื่อผู้รีวิว</th>
                            <th width="10%">คะแนน</th>
                            <th width="30%">ความคิดเห็น</th>
                            <th width="10%" class="text-center pe-4">จัดการ</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if(count($reviews) == 0): ?>
                            <tr><td colspan="6" class="text-center py-5 text-muted">ยังไม่มีข้อมูลรีวิวในระบบ</td></tr>
                        <?php else: ?>
                            <?php foreach ($reviews as $row): ?>
                            <tr>
                                <td class="ps-4 text-muted"><small><i class="fa-regular fa-clock me-1"></i> <?php echo date('d/m/Y H:i', strtotime($row['created_at'])); ?></small></td>
                                <td><span class="badge bg-secondary-subtle text-secondary border px-2 py-1"><?php echo htmlspecialchars($row['item_title']); ?></span></td>
                                <td class="fw-bold text-dark"><?php echo htmlspecialchars($row['reviewer_name']); ?></td>
                                <td class="text-warning fw-bold">
                                    <?php echo $row['rating']; ?> <i class="fa-solid fa-star"></i>
                                </td>
                                <td><?php echo htmlspecialchars($row['comment']); ?></td>
                                <td class="text-center pe-4">
                                    <a href="manage_reviews.php?delete_id=<?php echo $row['id']; ?>" class="btn btn-light btn-sm text-danger border shadow-sm rounded-3 px-3" onclick="return confirm('แน่ใจหรือไม่ที่จะลบรีวิวนี้ทิ้ง?');"><i class="fa-solid fa-trash"></i> ลบ</a>
                                </td>
                            </tr>
                            <?php endforeach; ?>
                        <?php endif; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>