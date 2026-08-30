<?php require_once 'db_connect.php'; ?>
<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ตำบลศาลาขาว จ.สุพรรณบุรี</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Prompt:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <style>
        body { background-color: #f8faff; font-family: 'Prompt', sans-serif; position: relative; }
        
        .navbar { background-color: rgba(255, 255, 255, 0.95); box-shadow: 0 2px 15px rgba(0,0,0,0.05); backdrop-filter: blur(10px); }
        .nav-link { font-weight: 500; color: #555; margin: 0 5px; border-radius: 20px; transition: 0.3s; }
        .nav-link:hover, .nav-link.active { background-color: #198754; color: white !important; }
        
        .hero-banner { background: linear-gradient(135deg, #0f5132 0%, #198754 100%); color: white; padding: 150px 0; text-align: center; border-bottom-left-radius: 40px; border-bottom-right-radius: 40px; }
        .hero-banner h1 { font-weight: 700; font-size: 4rem; text-shadow: 2px 2px 5px rgba(0,0,0,0.2); }
        
        .section-title { font-weight: 700; color: #198754; margin-bottom: 50px; position: relative; display: inline-block; }
        .section-title::after { content: ''; position: absolute; width: 50px; height: 4px; background: #ffc107; bottom: -10px; left: 50%; transform: translateX(-50%); border-radius: 2px; }
        
        .card { border: none; border-radius: 20px; transition: all 0.4s ease; box-shadow: 0 5px 15px rgba(0,0,0,0.05); text-decoration: none !important; color: inherit; cursor: pointer; }
        .card:hover { transform: translateY(-10px); box-shadow: 0 15px 35px rgba(0,0,0,0.15); }
        .card-img-top { height: 220px; object-fit: cover; border-top-left-radius: 20px; border-top-right-radius: 20px; }
        
        section { padding-top: 100px; padding-bottom: 50px; }
        html { scroll-behavior: smooth; scroll-padding-top: 80px; } 
    </style>
</head>
<body data-bs-spy="scroll" data-bs-target="#navbar-example" data-bs-smooth-scroll="true" tabindex="0">

<!-- เมนูด้านบน -->
<nav id="navbar-example" class="navbar navbar-expand-lg sticky-top px-3">
  <div class="container">
    <a class="navbar-brand fw-bold text-success" href="#"><i class="fa-solid fa-leaf me-2"></i>ศาลาขาว</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav mx-auto">
        <li class="nav-item"><a class="nav-link px-3" href="#section-history">ข้อมูลตำบล</a></li>
        <li class="nav-item"><a class="nav-link px-3" href="#section-tourist">ที่เที่ยว</a></li>
        <li class="nav-item"><a class="nav-link px-3" href="#section-restaurant">ร้านอาหาร</a></li>
        <li class="nav-item"><a class="nav-link px-3" href="#section-otop">สินค้า OTOP</a></li>
      </ul>
      <a href="admin/login.php" class="btn btn-outline-success rounded-pill px-4">Admin</a>
    </div>
  </div>
</nav>

<!-- หน้าปก -->
<div class="hero-banner" data-aos="zoom-in">
    <div class="container">
        <h1 data-aos="fade-up" data-aos-delay="200">ตำบลศาลาขาว</h1>
        <p class="mt-3 fs-4" data-aos="fade-up" data-aos-delay="400">อำเภอเมืองสุพรรณบุรี จังหวัดสุพรรณบุรี</p>
    </div>
</div>

<div class="container">
    
    <section id="section-history" data-aos="fade-up">
        <div class="text-center"><h2 class="section-title">ข้อมูลตำบลศาลาขาว</h2></div>
        <div class="row align-items-center mt-4">
            <div class="col-lg-6 mb-4">
                <img src="uploads/1.jpg" class="img-fluid rounded-4 shadow" alt="ประวัติ">
            </div>
            <div class="col-lg-6 px-lg-5">
                <p class="fs-5 text-muted" style="line-height: 1.8;">
                    <b>ตำบลศาลาขาว</b> ตั้งอยู่ในเขตอำเภอเมืองสุพรรณบุรี จังหวัดสุพรรณบุรี พื้นที่ส่วนใหญ่เป็นที่ราบลุ่ม อุดมสมบูรณ์ เหมาะแก่การทำเกษตรกรรม โดยเฉพาะการทำนาข้าว 
                    <br><br>มีโบราณสถานสำคัญคู่ชุมชนคือ <b>"วัดพระธาตุ"</b> ซึ่งมีพระปรางค์เก่าแก่ สันนิษฐานว่าสร้างขึ้นตั้งแต่สมัยอยุธยาตอนต้น เป็นศูนย์รวมจิตใจของชาวบ้านและแหล่งท่องเที่ยวเชิงประวัติศาสตร์
                </p>
            </div>
        </div>
    </section>

    <?php
    $stmt = $conn->query("SELECT * FROM items ORDER BY id DESC");
    $allItems = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    function renderSection($items, $category, $title, $icon, $badgeClass) {
        echo '<section id="section-'.$category.'">';
        echo '<div class="text-center"><h2 class="section-title"><i class="'.$icon.' me-2"></i> '.$title.'</h2></div>';
        echo '<div class="row">';
        
        $count = 0; $delay = 100;
        foreach ($items as $row) {
            if ($row['category'] == $category) {
                $count++;
                $img_src = (strpos($row['image_name'], 'http') === 0) ? $row['image_name'] : 'uploads/' . $row['image_name'];
                
                echo '
                <div class="col-lg-4 col-md-6 mb-5" data-aos="fade-up" data-aos-delay="'.$delay.'">
                    <a href="detail.php?id='.$row['id'].'" class="card h-100">
                        <img src="'.$img_src.'" class="card-img-top" alt="ภาพ">
                        <div class="card-body p-4 text-center">
                            <span class="badge '.$badgeClass.' mb-3 px-3 py-2"><i class="'.$icon.'"></i> '.$title.'</span>
                            <h4 class="fw-bold mb-3">'.htmlspecialchars($row['title']).'</h4>
                            <p class="text-muted text-truncate mb-0">'.htmlspecialchars($row['description']).'</p>
                        </div>
                    </a>
                </div>';
                $delay += 100;
            }
        }
        if($count == 0) { echo '<div class="col-12 text-center text-muted">ยังไม่มีข้อมูล</div>'; }
        echo '</div></section>';
    }
    ?>

    <?php renderSection($allItems, 'tourist', 'สถานที่ท่องเที่ยว', 'fa-solid fa-location-dot', 'bg-primary'); ?>
    <hr class="text-muted opacity-25">
    
    <?php renderSection($allItems, 'restaurant', 'ร้านอาหารแนะนำ', 'fa-solid fa-utensils', 'bg-danger'); ?>
    <hr class="text-muted opacity-25">
    
    <?php renderSection($allItems, 'otop', 'สินค้า OTOP', 'fa-solid fa-basket-shopping', 'bg-warning text-dark'); ?>

</div>

<div class="bg-dark text-white text-center py-4 mt-5">
    <p class="mb-0">© 2024 ระบบแนะนำข้อมูลตำบลศาลาขาว | จังหวัดสุพรรณบุรี</p>
</div>

<!-- Scripts -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>AOS.init({ duration: 800, once: true });</script>
</body>
</html>