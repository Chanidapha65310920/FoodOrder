import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My  Resume"),
          backgroundColor: Color(0xFFB0E0E6), // เพิ่มสี AppBar
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // รูปภาพ
                Image(
                  width: 150,
                  image: AssetImage("assets/images/fachi.jpg"),
                ),
                SizedBox(height: 10), // เว้นระยะห่างระหว่างรูปกับข้อความ
                // ข้อความใต้รูป
                Text(
                  "Fachi",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20), // เว้นระยะห่างระหว่างข้อความกับตาราง
                
                // ตาราง
                Card(
                  elevation: 3,
                  margin: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Table(
                      children: [
                        TableRow(
                children: [
                  Center(child: Text('Firstname', style: TextStyle(fontWeight: FontWeight.bold))),
                  Center(child: Text('Lastname', style: TextStyle(fontWeight: FontWeight.bold))),
                  Center(child: Text('Nickname', style: TextStyle(fontWeight: FontWeight.bold))),
                ],
              ),
                        TableRow(
                          children: [
                            Center(child: Text('Chanidapha')),
                            Center(child: Text('Soipool')),
                            Center(child: Text('Friend')),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                
                SizedBox(height: 20), // เว้นระยะห่างระหว่างตารางกับข้อมูลด้านล่าง
                
                // ข้อมูล Hobby, Food, Birthplace
                Card(
                  elevation: 3,
                  margin: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Personal Info",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.favorite, color: Colors.red),
                            SizedBox(width: 8),
                             Text("Hobby:", style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("Read Book , Go to the gym , Travel"),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.fastfood, color: Colors.orange),
                            SizedBox(width: 8),
Text("Food:", style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("Suki, Steak"),                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_city, color: Colors.blue),
                            SizedBox(width: 8),
Text("Birthplace:", style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("Bangkok"),                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                
                SizedBox(height: 20), // เว้นระยะห่าง
                
                // ข้อมูล Education
                // ข้อมูล Education
Align(
  alignment: Alignment.centerLeft, // จัดให้อยู่ด้านซ้าย
  child: Card(
    elevation: 4,
    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // จัดข้อความให้ชิดซ้าย
        children: [
          Text(
            "Education",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.school, color: Colors.green),
              SizedBox(width: 8),
Text("Elementary:", style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(width: 8),
                          Text("Wat Nongnamtao School, Year: 50"),            ],
          ),
          SizedBox(height: 6),
          Row(
            children: [
              Icon(Icons.school, color: Colors.green),
              SizedBox(width: 8),
 Text("Primary:", style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(width: 8),
                          Text("Wat Nongnamtao School, Year: 53"),            ],
          ),
          SizedBox(height: 6),
          Row(
            children: [
              Icon(Icons.school, color: Colors.green),
              SizedBox(width: 8),
Text("High School:", style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(width: 8),
                          Text("Taphanhin School, Year: 59"),            ],
          ),
          SizedBox(height: 6),
          Row(
            children: [
              Icon(Icons.school, color: Colors.green),
              SizedBox(width: 8),
  Text("Undergraduate:", style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(width: 8),
                          Text("Naresuan University, Year: 65"),            ],
          ),
        ],
      ),
    ),
  ),
),

                
                SizedBox(height: 20), // เว้นระยะห่างระหว่างข้อมูลและปุ่ม
              ],
            ),
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.green),
    ),
  );
}
