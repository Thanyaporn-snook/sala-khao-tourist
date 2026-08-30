# 🌿 Sala Khao Tourism & OTOP Recommendation System
**ระบบแนะนำข้อมูลการท่องเที่ยวและสินค้า OTOP ตำบลศาลาขาว จังหวัดสุพรรณบุรี**

## 📖 เกี่ยวกับโปรเจค (About The Project)
**💡 Project Background:** โปรเจคนี้มีจุดเริ่มต้นมาจาก **"โครงงานสมัยเรียนมหาวิทยาลัย"** ซึ่งดิฉันได้นำมารีไรท์ และปรับปรุงโค้ดใหม่ทั้งหมด โดยอัปเกรดเทคโนโลยี ดีไซน์ และระบบความปลอดภัยของฐานข้อมูลให้ทันสมัยและตรงตามมาตรฐานการพัฒนาเว็บไซต์ในปัจจุบันมากยิ่งขึ้น เพื่อใช้เป็นผลงานประกอบแฟ้มสะสมผลงาน (Portfolio)

ตัวโปรเจคเป็นเว็บแอปพลิเคชัน (Web Application) แบบครบวงจร (Full-Stack) ที่พัฒนาขึ้นเพื่อส่งเสริมการท่องเที่ยว สนับสนุนร้านอาหารท้องถิ่น และโปรโมทสินค้า OTOP ของตำบลศาลาขาว โดยเน้นประสบการณ์ผู้ใช้ (UX/UI) พร้อมระบบกระดานรีวิว (Community Reviews) และระบบจัดการข้อมูลหลังบ้าน (Admin CMS) 

## ✨ ฟีเจอร์เด่น 

### 📌 ฝั่งผู้ใช้งาน (Frontend)
* **Single Page Layout:** ดีไซน์หน้าเว็บหลักแบบหน้าเดียวจบ พร้อมแอนิเมชันขณะเลื่อนหน้าจอ (AOS.js)
* **Dynamic Categorization:** แบ่งหมวดหมู่ข้อมูลชัดเจน (สถานที่ท่องเที่ยว, ร้านอาหาร, สินค้า OTOP)
* **Interactive Review System:** 
  * ระบบให้คะแนนความประทับใจแบบกดเลือกดาว (1-5 ดาว)
  * ระบบคำนวณและแสดงผลคะแนนเฉลี่ย (Average Rating) ของแต่ละสถานที่แบบ Real-time
* **Responsive Design:** รองรับการแสดงผลทุกขนาดหน้าจอ ด้วย Framework Bootstrap 5

### ⚙️ ฝั่งผู้ดูแลระบบ (Admin CMS / Backend)
* **Secure Authentication:** ระบบล็อกอินเข้าสู่ระบบหลังบ้าน
* **Premium Dashboard UI:** หน้ากระดานผู้ดูแลระบบดีไซน์ทันสมัย ใช้งานง่าย
* **Full CRUD Operations:** สามารถ เพิ่ม , ดู , แก้ไข และลบ  ข้อมูลสถานที่และสินค้าได้
* **Image Upload:** รองรับการอัปโหลดและเปลี่ยนรูปภาพเข้าสู่เซิร์ฟเวอร์
* **Review Moderation:** มีระบบสำหรับตรวจสอบและกดลบ รีวิวที่ไม่เหมาะสมเพื่อดูแลความเรียบร้อยของเว็บไซต์

## 💻 เทคโนโลยีและเครื่องมือที่ใช้ (Tech Stack)
* **Frontend:** HTML5, CSS3, Bootstrap 5, FontAwesome, AOS Animation
* **Backend:** PHP 8.x (ใช้ระบบเชื่อมต่อฐานข้อมูลแบบ PDO - Prepared Statements ป้องกันการโจมตีแบบ SQL Injection)
* **Database:** MySQL / MariaDB

## 🚀 วิธีการติดตั้งและรันโปรเจค (Installation & Setup)
สำหรับผู้ที่ต้องการนำโปรเจคนี้ไปทดสอบรันบนเซิร์ฟเวอร์จำลอง (Localhost):
1. ดาวน์โหลดหรือ Clone โฟลเดอร์โปรเจคไปวางในโฟลเดอร์ `htdocs` ของโปรแกรม XAMPP 
2. เปิดโปรแกรม XAMPP กด **Start** ที่โมดูล `Apache` และ `MySQL`
3. เข้าไปที่ลิงก์ `http://localhost/phpmyadmin`
4. สร้าง Database ใหม่ชื่อว่า **`tourist_otop_db`** (ตั้งค่า Collation เป็น `utf8mb4_general_ci` เพื่อรองรับภาษาไทย)
5. ทำการ **Import** ไฟล์ `tourist_otop_db.sql` ที่แนบมาในโปรเจคนี้
6. เปิดเว็บเบราว์เซอร์แล้วพิมพ์ลิงก์: `http://localhost/tourist_project/` 
*(หมายเหตุ: หาก Apache ของคุณตั้งค่ารันบนพอร์ตอื่น เช่น 8088 ให้ระบุพอร์ตด้วย เช่น `http://localhost:8088/tourist_project/`)*

## 🔐 ข้อมูลสำหรับเข้าสู่ระบบผู้ดูแล (Admin Access)
* **URL เข้าสู่ระบบ:** `/admin/login.php`
* **Username:** `admin`
* **Password:** `123456`

---
*Refactored & Developed as a Full-Stack Web Development Portfolio (Frontend, Backend, Database Design, and UI/UX)*
