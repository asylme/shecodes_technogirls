import 'package:flutter/material.dart';



class PetsScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      title: 'Отдам бездомных щенков',
      description: 'Бесплатно',
      brand: 'Отдадим двух щенков. Черный мальчик, рыжая девочка.',
      image: 'assets/pet1.webp',
    ),
    Product(
      title: 'Приют для щенят и взрослых собак',
      description: 'Бесплатно',
      brand: 'Triol',
      image: 'assets/pet2.webp',
    ),
    Product(
      title: 'Отдам кота сиамской породы',
      description: 'Бесплатно',
      brand: 'Прибился кот сиамской породы, наверное бездомный, так как живёт к нас во дворе уже 1,5 месяца Возраст примерно 1-2 года',
      image: 'assets/pet3.webp',
    ),
    Product(
      title: 'Бездомные щенки ищут дом',
      description: 'Бесплатно',
      brand: 'Бездомные щенки ищут дом и хозяина.. Размеры и окрас разные.. ',
      image: 'assets/pet4.webp',
    ),
    // Add more products here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        centerTitle: true,
         actions: [
          IconButton(
            icon: Icon(Icons.publish),
            onPressed: () {
showModalBottomSheet(
  context: context,
  isScrollControlled: true,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
  ),
  builder: (BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Написать обьявление',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Row(
            children: [
              Icon(Icons.info_outline, color: Colors.grey),
              SizedBox(width: 8.0),
              Expanded(
                child: Text(
                  'После добавления удалить или отредактировать будет невозможно',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.0),
          // Поле "Наименование"
          TextField(
            decoration: InputDecoration(
              labelText: 'Заголовок ',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16.0),
          // Поле для загрузки файла
          Container(
            width: double.infinity,
            height: 150.0,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.attach_file, color: Colors.grey, size: 40),
                SizedBox(height: 8.0),
                Text(
                  'Выберите файл',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.0),
          // Кнопка "Добавить"
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Логика добавления бизнес-плана
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF9F86BC),
                padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 16.0),
                shape: RoundedRectangleBorder(
                  
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Text('Добавить', style: TextStyle(fontSize: 16.0, color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  },
);            },
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Количество карточек в одном ряду
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.6, // Соотношение сторон для каждой карточки
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductCard(product: products[index]);
          },
        ),
      ),
    );
  }
}

class Product {
  final String title;
  final String description;
  final String brand;
  final String image;

  Product({
    required this.title,
    required this.description,
    required this.brand,
    required this.image,
  });
}

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              // Изображение товара
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
                child: Image.asset(
                  product.image,
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              // Кнопка "Избранное"
              Positioned(
                top: 8,
                right: 8,
                child: IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {
                    // Действие при нажатии на "Избранное"
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Название товара
                Text(
                  product.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 4.0),
                // Описание товара
                Text(
                  product.description,
                  style: TextStyle(fontSize: 14.0),
                ),
                SizedBox(height: 4.0),
                // Бренд товара
                Text(
                  product.brand,
                  style: TextStyle(fontSize: 12.0, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}