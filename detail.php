<?php
require_once 'db_connect.php';

if (!isset($_GET['id'])) { header("Location: index.php"); exit(); }
$id = $_GET['id'];

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit_review'])) {
    $reviewer_name = trim($_POST['reviewer_name']);
    $rating = (int)$_POST['rating'];
    $comment = trim($_POST['comment']);
    
    if(!empty($reviewer_name) && !empty($comment) && $rating > 0) {
        $stmt_insert = $conn->prepare("INSERT INTO reviews (item_id, reviewer_name, rating, comment) VALUES (?, ?, ?, ?)");
        $stmt_insert->execute([$id, $reviewer_name, $rating, $comment]);
        header("Location: detail.php?id=" . $id . "#review-section");
        exit();
    }
}

$stmt = $conn->prepare("SELECT * FROM items WHERE id = ?");
$stmt->execute([$id]);
$item = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$item) { echo "ไม่พบข้อมูล"; exit(); }

$stmt_reviews = $conn->prepare("SELECT * FROM reviews WHERE item_id = ? ORDER BY created_at DESC");
$stmt_reviews->execute([$id]);
$reviews = $stmt_reviews->fetchAll(PDO::FETCH_ASSOC);

$total_rating = 0;
$review_count = count($reviews);
if($review_count > 0) {
    foreach($reviews as $r) { $total_rating += $r['rating']; }
    $avg_rating = number_format($total_rating / $review_count, 1);
} else {
    $avg_rating = 0;
}

$img_src = (strpos($item['image_name'], 'http') === 0) ? $item['image_name'] : 'uploads/' . $item['image_name'];

// ===================================
// แก้บัคแยกข้อความกับไอคอนให้เด็ดขาด
// ===================================
if($item['category'] == 'tourist') { 
    $badge = '<span class="badge bg-primary px-3 py-2"><i class="fa-solid fa-location-dot"></i> สถานที่ท่องเที่ยว</span>'; 
    $icon = '<i class="fa-solid fa-star text-warning"></i>';
    $label = 'กิจกรรมไฮไลท์:';
}
elseif($item['category'] == 'restaurant') { 
    $badge = '<span class="badge bg-danger px-3 py-2"><i class="fa-solid fa-utensils"></i> ร้านอาหาร</span>'; 
    $icon = '<i class="fa-solid fa-fire text-danger"></i>';
    $label = 'เมนูแนะนำ:';
}
else { 
    $badge = '<span class="badge bg-warning text-dark px-3 py-2"><i class="fa-solid fa-store"></i> สินค้า OTOP</span>'; 
    $icon = '<i class="fa-solid fa-tag text-success"></i>';
    $label = 'ราคา:';
}
?>
<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo htmlspecialchars($item['title']); ?> | ศาลาขาว</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Prompt:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body { background-color: #f8faff; font-family: 'Prompt', sans-serif; }
        .detail-img { width: 100%; height: 400px; object-fit: cover; border-radius: 20px; box-shadow: 0 10px 30px rgba(0,0,0,0.1); }
        .info-box { background: white; padding: 30px; border-radius: 20px; box-shadow: 0 5px 20px rgba(0,0,0,0.05); height: 100%; }
        .review-card { transition: all 0.3s; }
        .review-card:hover { transform: translateY(-5px); box-shadow: 0 10px 20px rgba(0,0,0,0.1) !important; }
        
        /* CSS สำหรับให้คะแนนดาวแบบกดจิ้ม (Clickable Stars) */
        .star-rating {
            display: flex;
            flex-direction: row-reverse; /* สลับขวาไปซ้าย เพื่อให้ทำ Hover ง่ายขึ้น */
            justify-content: flex-end;
        }
        .star-rating input { display: none; } /* ซ่อนปุ่มกลมๆ เอาไว้ */
        .star-rating label {
            color: #e4e5e9; /* สีเทาตอนยังไม่กด */
            font-size: 2.2rem;
            padding: 0 4px;
            cursor: pointer;
            transition: all 0.2s;
        }
        /* ถ้ากดดาวดวงไหน หรือเอาเมาส์ชี้ ให้ดาวดวงนั้นและดาวที่อยู่ซ้ายมือเปลี่ยนเป็นสีทอง */
        .star-rating input:checked ~ label,
        .star-rating label:hover,
        .star-rating label:hover ~ label {
            color: #ffc107; 
        }
    </style>
</head>
<body>

<div class="container py-4">
    <a href="index.php" class="btn btn-dark rounded-pill px-4 mb-4 shadow-sm"><i class="fa-solid fa-arrow-left me-2"></i> กลับหน้าหลัก</a>

    <!-- ส่วนที่ 1: ข้อมูลสถานที่ -->
    <div class="row g-4 align-items-stretch">
        <div class="col-lg-6">
            <img src="<?php echo $img_src; ?>" class="detail-img" alt="...">
        </div>
        
        <div class="col-lg-6">
            <div class="info-box d-flex flex-column justify-content-center">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <?php echo $badge; ?>
                    <span class="fs-6 fw-bold text-warning">
                        <?php if($review_count > 0): ?>
                            <i class="fa-solid fa-star"></i> <?php echo $avg_rating; ?> <span class="text-muted">(<?php echo $review_count; ?> รีวิว)</span>
                        <?php else: ?>
                            <span class="text-muted">ยังไม่มีคะแนน</span>
                        <?php endif; ?>
                    </span>
                </div>
                
                <h2 class="fw-bold mb-3 text-success"><?php echo htmlspecialchars($item['title']); ?></h2>
                <p class="text-muted mb-4" style="line-height: 1.8; font-size: 1rem;">
                    <?php echo nl2br(htmlspecialchars($item['description'])); ?>
                </p>
                
                <hr class="mb-4 text-muted opacity-25">
                
                <div class="d-flex align-items-center mb-3">
                    <div style="width: 40px; text-align: center;"><i class="fa-solid fa-map-location-dot text-primary fs-4"></i></div>
                    <div>
                        <strong class="d-block text-dark">พิกัด / ที่ตั้ง:</strong>
                        <span class="text-muted"><?php echo htmlspecialchars($item['location'] ?? 'ไม่ระบุข้อมูล'); ?></span>
                    </div>
                </div>
                
                <div class="d-flex align-items-center">
                    <!-- โค้ดที่แก้บัคตัวหนังสือตกบรรทัด -->
                    <div style="width: 40px; text-align: center;" class="fs-4"><?php echo $icon; ?></div>
                    <div>
                        <strong class="d-block text-dark"><?php echo $label; ?></strong>
                        <span class="text-danger fw-bold"><?php echo htmlspecialchars($item['highlight_info'] ?? 'ไม่ระบุข้อมูล'); ?></span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- เส้นคั่นแบ่งโซน -->
    <hr class="my-5 opacity-25">

    <!-- ส่วนที่ 2: ระบบรีวิว -->
    <div class="row g-5" id="review-section">
        
        <!-- ฟอร์มเขียนรีวิว (ฝั่งซ้าย) -->
        <div class="col-lg-5">
            <div class="bg-white p-4 rounded-4 shadow-sm border border-light">
                <h4 class="fw-bold mb-4"><i class="fa-solid fa-pen-to-square text-primary me-2"></i> เขียนรีวิวของคุณ</h4>
                <form method="post">
                    <div class="mb-3">
                        <label class="form-label fw-bold">ชื่อของคุณ</label>
                        <input type="text" name="reviewer_name" class="form-control bg-light" required placeholder="เช่น สายเที่ยว สุพรรณ">
                    </div>
                    
                    <div class="mb-3">
                        <label class="form-label fw-bold">ให้คะแนนความประทับใจ</label>
                        <!-- ระบบให้ดาวแบบกดจิ้ม (Clickable Stars) -->
                        <div class="star-rating">
                            <input type="radio" id="star5" name="rating" value="5" required /><label for="star5" class="fa-solid fa-star" title="5 ดาว"></label>
                            <input type="radio" id="star4" name="rating" value="4" /><label for="star4" class="fa-solid fa-star" title="4 ดาว"></label>
                            <input type="radio" id="star3" name="rating" value="3" /><label for="star3" class="fa-solid fa-star" title="3 ดาว"></label>
                            <input type="radio" id="star2" name="rating" value="2" /><label for="star2" class="fa-solid fa-star" title="2 ดาว"></label>
                            <input type="radio" id="star1" name="rating" value="1" /><label for="star1" class="fa-solid fa-star" title="1 ดาว"></label>
                        </div>
                    </div>

                    <div class="mb-4 mt-2">
                        <label class="form-label fw-bold">ความคิดเห็น</label>
                        <textarea name="comment" class="form-control bg-light" rows="3" required placeholder="ประทับใจอะไรบ้าง แชร์ให้ทุกคนรู้เลย!"></textarea>
                    </div>
                    <button type="submit" name="submit_review" class="btn btn-primary w-100 rounded-pill fw-bold py-2">
                        <i class="fa-regular fa-paper-plane me-2"></i> ส่งรีวิว
                    </button>
                </form>
            </div>
        </div>

        <!-- รายการรีวิวจากคนอื่น (ฝั่งขวา) -->
        <div class="col-lg-7">
            <h4 class="fw-bold mb-4"><i class="fa-regular fa-comments text-success me-2"></i> รีวิวจากผู้ใช้งาน (<?php echo $review_count; ?>)</h4>
            
            <?php if($review_count == 0): ?>
                <div class="alert bg-white text-center py-5 rounded-4 text-muted border shadow-sm">
                    <i class="fa-regular fa-face-smile fs-1 mb-3 text-warning"></i><br>
                    <h5 class="fw-bold">ยังไม่มีรีวิวสำหรับสถานที่นี้</h5>
                    <p class="mb-0">มาเป็นคนแรกที่แชร์ประสบการณ์ดีๆ สิครับ!</p>
                </div>
            <?php else: ?>
                <div class="review-list">
                    <?php foreach($reviews as $r): ?>
                        <div class="card review-card border-0 shadow-sm rounded-4 p-4 mb-3">
                            <div class="d-flex justify-content-between align-items-center mb-2">
                                <h6 class="fw-bold mb-0 text-dark"><i class="fa-solid fa-circle-user text-muted me-2 fs-5"></i> <?php echo htmlspecialchars($r['reviewer_name']); ?></h6>
                                <small class="text-muted"><i class="fa-regular fa-clock me-1"></i> <?php echo date('d/m/Y', strtotime($r['created_at'])); ?></small>
                            </div>
                            <div class="text-warning mb-2">
                                <?php 
                                for($i=1; $i<=5; $i++) {
                                    if($i <= $r['rating']) echo '<i class="fa-solid fa-star"></i> ';
                                    else echo '<i class="fa-regular fa-star text-light"></i> ';
                                }
                                ?>
                            </div>
                            <p class="mb-0 text-secondary" style="line-height: 1.6; font-size: 0.95rem;">
                                <?php echo nl2br(htmlspecialchars($r['comment'])); ?>
                            </p>
                        </div>
                    <?php endforeach; ?>
                </div>
            <?php endif; ?>
            
        </div>
    </div>
</div>

<br><br>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>