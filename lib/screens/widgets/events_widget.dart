import 'package:flutter/material.dart';



class EventsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/forum.jpg', 
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 40,
            left: 16,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
            top: 40,
            right: 16,
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.favorite_border, color: Colors.white),
                  onPressed: () {
                  },
                ),
                IconButton(
                  icon: Icon(Icons.share, color: Colors.white),
                  onPressed: () {
                  },
                ),
              ],
            ),
          ),
          Positioned.fill(
            top: 180,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                       
                        Container(
                        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                        decoration: BoxDecoration(
                          border: Border.all(color:   Colors.green),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Text(
                          'КОНФЕРЕНЦИЯ',
                          style: TextStyle(color:  Colors.green),
                        ),
                      ),
                        SizedBox(width: 8),
                        Container(
                        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Text(
                           'ОФФЛАЙН',
                          style: TextStyle(color: Colors.orange),
                        ),
                      ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Business Technology Expo',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                  
                    Row(
                      children: [
                        Icon(Icons.calendar_today, color: Color(0xFF9F86BC)),
                        SizedBox(width: 4),
                        Text(
                          '1 - 3 апреля, 11:48 - 11:48',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    TextButton.icon(
                      onPressed: () {
                      },
                      icon: Icon(Icons.add, color: Colors.green),
                      label: Text(
                        '5 VTC',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                    SizedBox(height: 8),
                    // Место проведения
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Color(0xFF9F86BC)),
                        SizedBox(width: 4),
                        Text('Астана'),
                      ],
                    ),
                    SizedBox(height: 16),
                    // Описание
                    Text(
                      'Описание',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Business Technology Expo — форум-выставка автоматизации и технологий для бизнеса.\n\nДаты: 1-3 апреля, 2025\nМесто: MBL EXPO, г.Астана, Казахстан',
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 8),
                    GestureDetector(
                      onTap: () {
                        // Перейти к полному описанию
                      },
                      child: Text(
                        'Читать дальше',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    // Информация об авторе
                    Text(
                      'Автор',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xFF9F86BC),
                          child: Text(
                            'A',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Айгерим Мендибаева',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              'Волонтер',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}