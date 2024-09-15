import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Наш магазин'),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () {
              // Добавьте функциональность фильтрации здесь
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          EventCard(
            title: 'Курс от Skillbox',
            location: '250 VTC',
            date:
                'Осенний вызов от Skillbox: прокачай карьеру за один курс. Правильная конкуренция — конкуренция со вчерашним тобой. Начни сегодня, чтобы стать лучше завтра',
            image: 'assets/skillbox.jpeg', // Путь к изображению
          ),
          EventCard(
            title: 'Участие в NURIS',
            location: '500 VTC',
            date: 'Технопарк NURIS – это многофункциональный комплекс с эффективной экосистемой поддержки и развития высокотехнологических стартапов и компаний. ',
            image: 'assets/nuris.png', // Путь к изображению
          ),
        ],
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String title;
  final String location;
  final String date;
  final String image;

  EventCard({
    required this.title,
    required this.location,
    required this.date,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                image,
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    Icon(
                      Icons.money,
                      size: 24.0,
                      color: Color(0xFF539C55),
                    ),
                    SizedBox(width: 4.0),
                    Text(
                      location,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.0),
                Row(
                  children: [
                    SizedBox(width: 4.0),
                    Expanded(
                      child: Text(
                        date,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}