import 'package:flutter/material.dart';
import 'dart:math'; // สำหรับการสุ่มเลข
import 'FoodMenu.dart'; // นำเข้า FoodMenu.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Menu & Prime Number',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Prime Number & Food Menu'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> _items = []; // รายการข้อมูลที่จะเพิ่มใน ListView
  List<int> _primeNumbers = []; // ตัวแปรสำหรับเก็บจำนวนเฉพาะที่สุ่มมาแล้ว
  double _totalPrice = 0.0; // ตัวแปรสำหรับเก็บผลรวมราคาอาหารทั้งหมด

  // ฟังก์ชันตรวจสอบว่าเป็นจำนวนเฉพาะหรือไม่
  bool _isPrime(int number) {
    if (number <= 1) return false;
    for (int i = 2; i <= sqrt(number).toInt(); i++) {
      if (number % i == 0) return false;
    }
    return true;
  }

  // ฟังก์ชันสุ่มจำนวนเฉพาะจากรายการที่เก็บไว้
  int _getRandomPrime() {
    Random random = Random();
    if (_primeNumbers.isEmpty) {
      // สร้างจำนวนเฉพาะและเก็บไว้ใน _primeNumbers
      for (int i = 2; i <= 1000; i++) {
        if (_isPrime(i)) {
          _primeNumbers.add(i);
        }
      }
    }
    // สุ่มเลือกจำนวนเฉพาะจากรายการ
    return _primeNumbers[random.nextInt(_primeNumbers.length)];
  }

  // ฟังก์ชันสุ่มเมนูอาหารจาก FoodMenu.dart
  Foodmenu _getRandomFoodMenu() {
    Random random = Random();

    if (Foodmenu.menuItems.isNotEmpty) {
      return Foodmenu.menuItems[random.nextInt(Foodmenu.menuItems.length)];
    } else {
      // คืนค่าตัวอย่างเมนูในกรณีที่ไม่มีข้อมูล
      return Foodmenu(
        name: 'Default Food',
        price: '0 THB',
        image: 'assets/images/default.png',
        description: 'No menu available.',
      );
    }
  }

  // ฟังก์ชันเพิ่มรายการใหม่
  void _addNewRow() {
    setState(() {
      Foodmenu randomMenu = _getRandomFoodMenu(); // สุ่มเมนูอาหาร
      int randomPrime = _getRandomPrime(); // เลือกจำนวนเฉพาะจากรายการ

      // เพิ่มข้อมูลเมนูอาหารพร้อมจำนวนเฉพาะ
      _items.add(
          'Food: ${randomMenu.name}, Price: ${randomMenu.price}, Description: ${randomMenu.description}, Prime Number: $randomPrime');

      // คำนวณผลรวมราคา
      _totalPrice += double.tryParse(randomMenu.price.replaceAll(' THB', '')) ?? 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          widget.title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          // แสดงผลรวมราคาอาหารทั้งหมด
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Total: ${_totalPrice.toStringAsFixed(2)} THB', // แสดงผลรวมราคา
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
      body: _items.isEmpty
          ? Center(
              child: Text(
                "No items yet! Press the '+' button to add.",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[700],
                ),
              ),
            )
          : ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: _items.length, // จำนวนไอเท็มทั้งหมด
              itemBuilder: (context, index) {
                // ใช้จำนวนเฉพาะจากที่เก็บไว้ใน _items
                return ListTile(
                  tileColor: Colors.deepPurple[50], // พื้นหลังของ Tile
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  title: Text(
                    _items[index], // แสดงชื่อไอเท็ม
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  leading: CircleAvatar(
                    backgroundColor: Colors.deepPurple, // สีพื้นหลังของวงกลม
                    child: Text(
                      '${_items[index].split('Prime Number: ')[1].split(' ')[0]}', // แสดงจำนวนเฉพาะจาก string
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 10),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addNewRow, // เรียกใช้ฟังก์ชันเพิ่มไอเท็ม
        tooltip: 'Add Item',
        backgroundColor: Colors.deepPurple,
        child: const Icon(Icons.add, size: 30), // ไอคอนปุ่มเป็นเครื่องหมายบวก
      ),
    );
  }
}
