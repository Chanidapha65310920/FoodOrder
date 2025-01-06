class Foodmenu {
  String name;         // ชื่ออาหาร
  String price;        // ราคาของอาหาร
  String image;        // URL หรือ Path ของรูปภาพอาหาร
  String description;  // คำอธิบายเกี่ยวกับอาหาร

  // คอนสตรัคเตอร์
  Foodmenu({
    required this.name, 
    required this.price, 
    required this.image, 
    required this.description,
  });

  // เพิ่ม static เพื่อให้สามารถเข้าถึง menuItems ได้จากนอกคลาส
  static final List<Foodmenu> menuItems = [
    Foodmenu(
      name: "Spaghetti Carbonara",
      price: "250 THB",
      image: "https://via.placeholder.com/150",
      description: "Creamy spaghetti with bacon and parmesan cheese.",
    ),
    Foodmenu(
      name: "Pad Thai",
      price: "120 THB",
      image: "https://via.placeholder.com/150",
      description: "Thailand's famous stir-fried noodles with tamarind sauce.",
    ),
    Foodmenu(
      name: "Green Curry",
      price: "180 THB",
      image: "https://via.placeholder.com/150",
      description: "Spicy Thai green curry with chicken and coconut milk.",
    ),
    Foodmenu(
      name: "Tom Yum Goong",
      price: "150 THB",
      image: "https://via.placeholder.com/150",
      description: "Spicy and sour shrimp soup with Thai herbs.",
    ),
    Foodmenu(
      name: "Massaman Curry",
      price: "200 THB",
      image: "https://via.placeholder.com/150",
      description: "Rich and flavorful curry with tender beef and potatoes.",
    ),
    Foodmenu(
      name: "Mango Sticky Rice",
      price: "90 THB",
      image: "https://via.placeholder.com/150",
      description: "Sweet sticky rice paired with ripe mango and coconut milk.",
    ),
    Foodmenu(
      name: "Chicken Satay",
      price: "110 THB",
      image: "https://via.placeholder.com/150",
      description: "Grilled chicken skewers served with peanut sauce.",
    ),
    Foodmenu(
      name: "Som Tum (Papaya Salad)",
      price: "70 THB",
      image: "https://via.placeholder.com/150",
      description: "Spicy green papaya salad with peanuts and lime.",
    ),
    Foodmenu(
      name: "Khao Pad (Fried Rice)",
      price: "100 THB",
      image: "https://via.placeholder.com/150",
      description: "Fried rice with vegetables, eggs, and your choice of meat.",
    ),
    Foodmenu(
      name: "Spring Rolls",
      price: "80 THB",
      image: "https://via.placeholder.com/150",
      description: "Crispy fried spring rolls stuffed with vegetables and meat.",
    ),
  ];
}
