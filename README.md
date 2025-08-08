# flutter_api

# Flutter API - งานที่ 8 ดึงข้อมูลอาหารจาก API

แอปพลิเคชัน Flutter สำหรับการดึงข้อมูลอาหารจาก API และแสดงผลในรูปแบบที่สวยงาม

## 📱 เกี่ยวกับโปรเจกต์

โปรเจกต์นี้เป็นส่วนหนึ่งของงานที่ 8 ที่มุ่งเน้นการศึกษาและพัฒนาทักษะในการ:
- เชื่อมต่อกับ API ภายนอก
- จัดการข้อมูลแบบ JSON
- แสดงผลข้อมูลด้วย Flutter Widgets
- การจัดการ State ในแอปพลิเคชัน

## ✨ ฟีเจอร์หลัก

- 🍽️ แสดงรายการอาหารจาก API
- 🔍 ค้นหาอาหารตามชื่อ
- 📝 แสดงรายละเอียดของอาหารแต่ละชนิด
- 📱 รองรับการใช้งานบนมือถือ
- 🎨 UI/UX ที่สวยงามและใช้งานง่าย

## 🛠️ เทคโนโลยีที่ใช้

- **Flutter** - Framework สำหรับพัฒนาแอปมือถือ
- **Dart** - ภาษาโปรแกรมมิ่ง
- **HTTP Package** - สำหรับเรียกใช้ API
- **JSON** - รูปแบบการแลกเปลี่ยนข้อมูล

## 📋 ข้อกำหนดระบบ

- Flutter SDK >= 2.0.0
- Dart SDK >= 2.12.0
- Android Studio / VS Code
- อุปกรณ์ Android หรือ iOS สำหรับทดสอบ

## 🚀 การติดตั้งและรันโปรเจกต์

### 1. Clone โปรเจกต์
```bash
git clone https://github.com/sompong47/flutter_API.git
cd flutter_API
```

### 2. ติดตั้ง Dependencies
```bash
flutter pub get
```

### 3. รันแอปพลิเคชัน
```bash
flutter run
```

## 📂 โครงสร้างโปรเจกต์

```
lib/
├── main.dart              # Entry point ของแอป
├── models/               # Data models
│   └── food_model.dart   # Model สำหรับข้อมูลอาหาร
├── services/             # API services
│   └── api_service.dart  # Service สำหรับเรียก API
├── screens/              # หน้าจอต่างๆ
│   ├── home_screen.dart  # หน้าหลัก
│   └── detail_screen.dart # หน้ารายละเอียด
└── widgets/              # Custom widgets
    └── food_card.dart    # Card สำหรับแสดงอาหาร
```

## 🔧 การใช้งาน

1. **หน้าหลัก**: แสดงรายการอาหารทั้งหมดจาก API
2. **การค้นหา**: ใช้ search bar เพื่อค้นหาอาหารที่ต้องการ
3. **รายละเอียด**: กดที่อาหารเพื่อดูรายละเอียดเพิ่มเติม

## 📊 API ที่ใช้

โปรเจกต์นี้ใช้ API สำหรับข้อมูลอาหาร ซึ่งให้ข้อมูลดังนี้:
- ชื่ออาหาร
- รูปภาพ
- ส่วนผสม
- วิธีการทำ
- ข้อมูลโภชนาการ

## 🐛 การแก้ไขปัญหา

### ปัญหาที่อาจเกิดขึ้น:
1. **ไม่สามารถเชื่อมต่อ API ได้**
   - ตรวจสอบการเชื่อมต่ออินเทอร์เน็ต
   - ตรวจสอบ URL ของ API

2. **แอปไม่แสดงข้อมูล**
   - ตรวจสอบ JSON parsing
   - ดู console logs เพื่อหาข้อผิดพลาด

3. **Error ในการ build**
   - รัน `flutter clean` แล้วตามด้วย `flutter pub get`

## 📱 Screenshots

*(เพิ่มภาพหน้าจอแอปพลิเคชันที่นี่)*

## 🤝 การมีส่วนร่วม

หากต้องการมีส่วนร่วมในการพัฒนา:
1. Fork repository นี้
2. สร้าง branch ใหม่ (`git checkout -b feature/AmazingFeature`)
3. Commit การเปลี่ยนแปลง (`git commit -m 'Add some AmazingFeature'`)
4. Push ไปยัง branch (`git push origin feature/AmazingFeature`)
5. สร้าง Pull Request

## 📄 License

โปรเจกต์นี้อยู่ภายใต้ MIT License - ดูไฟล์ [LICENSE](LICENSE) สำหรับรายละเอียด

## 👨‍💻 ผู้พัฒนา

- **Sompong** - [GitHub Profile](https://github.com/sompong47)

## 📞 ติดต่อ

หากมีคำถามหรือข้อเสนอแนะ สามารถติดต่อได้ที่:
- GitHub Issues: [https://github.com/sompong47/flutter_API/issues](https://github.com/sompong47/flutter_API/issues)

---

⭐ หากโปรเจกต์นี้มีประโยชน์ อย่าลืม Star repository นี้นะครับ!
