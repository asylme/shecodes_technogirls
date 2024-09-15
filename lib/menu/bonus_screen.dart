import 'package:flutter/material.dart';

class BonusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
Navigator.pop(context);          },
        ),
        title: Text(
          'VolunT Coins ',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: 500,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 126, 239, 130),
                      Color.fromARGB(255, 22, 124, 27)
                    ], // Установите цвета градиента
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Вы накопили',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '540 VTC',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Как накопить VolunT Coins?',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Обменяйте их на нашем магазине',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            // Сетка акций
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  BonusCard(
                    title: 'Участие в мероприятиях',
                    subtitle: '5 VTC',
                    image: 'assets/bonus1.png', // Замените на ваш путь
                    backgroundColor: Colors.purple[100]!,
                  ),
                  BonusCard(
                    title: 'Активность на платформе',
                    subtitle: '5 VTC',
                    image: 'assets/content.png',
                    backgroundColor: Colors.green[100]!,
                  ),
                  BonusCard(
                    title: 'Рекомендации и приглашения',
                    subtitle: '5 VTC',
                    image: 'assets/bonus4.png',
                    backgroundColor: Colors.blue[100]!,
                  ),
                  BonusCard(
                    title: 'Достижения и    награды',
                    subtitle: '5 VTC',
                    image: 'assets/bonus3.png',
                    backgroundColor: Colors.orange[100]!,
                  ),
                ],
              ),
            ),

            Divider(thickness: 1.5, color: Colors.grey[300]),
            // Kaspi Гид блок
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Бонусные системы на платформе',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text('''
Способы накопления бонусов

1. Участие в мероприятиях:
    * Волонтерские мероприятия: Участие в волонтерских акциях (например, эко-субботники, помощь в приютах для животных) будет приносить пользователю определенное количество бонусов.
    * Организация мероприятий: Пользователи, организующие и проводящие успешные мероприятия, также будут получать бонусы.
2. Активность на платформе:
    * Создание контента: Написание статей, создание постов, отзывов и комментариев на платформе будет вознаграждаться бонусами.
    * Посещение событий: Участие в книжных клубах, встречах с менторами и других событиях будет приносить бонусы.
3. Рекомендации и приглашения:
    * Привлечение новых пользователей: За приглашение новых пользователей на платформу будет начисляться определенное количество бонусов.
    * Успешные рекомендации: Если приглашенные пользователи активно участвуют в мероприятиях и проектах, пригласивший также будет получать дополнительные бонусы.
4. Достижения и награды:
    * Завершение задач и проектов: Выполнение задач и завершение проектов, установленных платформой, будет вознаграждаться бонусами.
    * Получение сертификатов и наград: Платформа будет выдавать виртуальные сертификаты и награды за определенные достижения, которые будут сопровождаться бонусами.
''')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BonusCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final Color backgroundColor;

  BonusCard({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(7.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            subtitle,
            style: TextStyle(
              color: const Color.fromARGB(255, 9, 206, 9),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 1),
          Expanded(
            child: Image.asset(
              image,
              fit: BoxFit.fitHeight,
              height: 50,
            ), // Ваше изображение
          ),
          SizedBox(height: 1),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
