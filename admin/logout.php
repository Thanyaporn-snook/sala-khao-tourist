<?php
session_start();
session_destroy(); // สั่งทำลายตรายางการล็อกอินทิ้งทั้งหมด
header("Location: login.php"); // เด้งกลับไปหน้าล็อกอิน
exit();
?>