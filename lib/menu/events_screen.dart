import 'package:first_app/screens/widgets/events_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/filter_widget.dart';

class EventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Мероприятия'),
        titleTextStyle: TextStyle(fontSize: 18, color: Colors.black),
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
                'Добавить свое мероприятие',
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
    
          IconButton(
            icon: Image.asset('assets/filter.png'),
            onPressed: () {
              // Открытие фильтра
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                builder: (context) => FilterPage(),
              );
            },
          ),
        ],
      ),
  
  
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            // Горизонтально прокручиваемое меню категорий
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('Все', style: TextStyle(fontSize: 16)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Избранные', style: TextStyle(fontSize: 16)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Мои регистрации', style: TextStyle(fontSize: 16)),
                  ),
                 
                ],
              ),
            ),
            SizedBox(height: 8.0),
            // Список мероприятий
            Expanded(
              child: ListView(
                children: [
                  EventCard(
                    title: 'Business Technology Expo',
                    location: 'Астана',
                    date: '1-3 апреля',
                    time: '11:48 - 11:48',
                    isOffline: true,
                    eventType: 'КОНФЕРЕНЦИЯ',
                    image: 'assets/forum.jpg', // Путь к изображению
                  ),
                  EventCard(
                    title: 'Субботник в парке "Жетысу"',
                    location: 'Астана',
                    date: '6 апреля',
                    time: '14:00 - 16:00',
                    isOffline: false,
                    eventType: 'ОТКРЫТОЕ МЕРОПРИЯТИЕ',
                    image: 'assets/vol1.jpeg', // Путь к изображению
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String title;
  final String location;
  final String date;
  final String time;
  final bool isOffline;
  final String eventType;
  final String image;

  EventCard({
    required this.title,
    required this.location,
    required this.date,
    required this.time,
    required this.isOffline,
    required this.eventType,
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
          InkWell(
            onTap: (){
               Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EventsWidget()), 
              );
            },
            child: Stack(
              children: [
                Image.asset(image,  height: 180,width: 700,
              fit: BoxFit.cover,),
                Positioned(
                  bottom: 8.0,
                  left: 8.0,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(16.0),
                          color: const Color.fromARGB(255, 143, 137, 137).withOpacity(0.4)
                        ),
                        child: Text(
                          eventType,
                          style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange),
                          borderRadius: BorderRadius.circular(16.0),
                          color: const Color.fromARGB(255, 117, 83, 32).withOpacity(0.4)
                        ),
                        child: Text(
                          isOffline ? 'ОФФЛАЙН' : 'ОНЛАЙН',
                          style: TextStyle(color: Colors.orange),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    Icon(Icons.location_on, size: 24.0, color: Color(0xFF539C55)),
                    SizedBox(width: 4.0),
                    Text(location),
                  ],
                ),
                SizedBox(height: 4.0),
                Row(
                  children: [
                    Icon(Icons.calendar_today, size: 24.0, color: Color(0xFF539C55)),
                    SizedBox(width: 4.0),
                    Text('$date, $time'),
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