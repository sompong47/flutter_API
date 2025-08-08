# flutter_api

# 🍽️ Flutter API - แอปเมนูอาหารพร้อมตะกร้าสินค้า

แอปนี้สร้างด้วย Flutter และเชื่อมต่อกับ REST API [DummyJSON - Recipes](https://dummyjson.com/recipes) เพื่อแสดงข้อมูลเมนูอาหาร โดยผู้ใช้สามารถดูรายการอาหาร และเพิ่มลงในตะกร้าสินค้าได้

---

## 🚀 คุณสมบัติหลัก

- ✅ ดึงข้อมูลเมนูอาหารจาก API
- ✅ แสดงรูปภาพ ชื่ออาหาร จำนวนเสิร์ฟ
- ✅ เพิ่มเมนูลงในตะกร้าสินค้า
- ✅ ดูรายการที่อยู่ในตะกร้า
- ✅ UI เรียบง่าย ใช้งานง่าย

---

## 📦 API ที่ใช้

- **Endpoint:** `https://dummyjson.com/recipes`
- **รูปแบบข้อมูลที่ได้กลับมา:** JSON

```json
{
  "recipes": [
    {
      "id": 1,
      "name": "Italian Pasta",
      "image": "https://cdn.dummyjson.com/recipe/pasta.jpg",
      "servings": 2,
      ...
    },
    ...
  ]
}
🛠️ วิธีติดตั้งและใช้งาน
โคลนโปรเจกต์

bash
คัดลอก
แก้ไข
git clone https://github.com/sompong47/flutter_API.git
cd flutter_API
ติดตั้ง Dependencies

bash
คัดลอก
แก้ไข
flutter pub get
รันแอป

bash
คัดลอก
แก้ไข
flutter run
🧱 โครงสร้างโปรเจกต์ (บางส่วน)
css
คัดลอก
แก้ไข
lib/
├── main.dart
├── models/
│   └── recipe.dart
├── screens/
│   ├── home_screen.dart
│   └── cart_screen.dart
├── services/
│   └── api_service.dart
└── widgets/
    └── recipe_card.dart
📝 ผู้พัฒนา
👤 Sompong Yaikham

📌 หมายเหตุ
ข้อมูล API มาจากเว็บไซต์ dummyjson.com

โค้ดยังสามารถต่อยอดเพิ่มเติมได้ เช่น:

ระบบล็อกอิน

การจัดการคำสั่งซื้อ

การเชื่อมต่อฐานข้อมูลจริง


หากพบปัญหาหรือข้อเสนอแนะเพิ่มเติม สามารถเปิด issue หรือ pull request ได้เลย 🙌

yaml
คัดลอก
แก้ไข

---

หากคุณต้องการไฟล์ `README.md` ตัวจริงในรูปแบบ Markdown พร้อมให้ดาวน์โหลด บอกผมได้นะครับ ผมจะสร้างไฟล์ให้ทันที ✅








ถาม ChatGPT

