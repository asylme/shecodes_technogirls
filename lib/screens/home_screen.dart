import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        titleTextStyle: const TextStyle(fontSize: 20, color: Colors.black),
        title: Image.asset('assets/logo.png', height: 90,),
toolbarHeight: 90,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Главная', style: TextStyle(fontSize: 20, ),),
              Container(
                height: 220,
                child: PageView(
                  children: [
                    SliderItem(
                      text: 'Найдите единомышленников\nВ разделе Чат',
                      imageUrl: 'assets/book.jpg', 
                    ),
                    SliderItem(
                      text: 'Присоединяйтесь к мероприятиям\nи проектам',
                      imageUrl: 'assets/forum.jpg', 
                    ),
                    SliderItem(
                      text: 'Станьте волонтером\nи помогайте другим',
                      imageUrl: 'assets/vol1.jpeg', 
                    ),
                  ],
                ),
              ),
              Text('Лента', style: TextStyle(fontSize: 20, ),),
              SizedBox(height: 10,),
              Card(
                elevation: 4.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/man2.avif'),
                          ),
                          SizedBox(width: 8.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Кирилл Коваленко',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('2 часа назад'),
                            ],
                          ),
                          Spacer(),
                          Text(
                            'Зоо - активизм',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16.0),
                      const Text(
                        'Активизм для начинающих Vegan Action. КАК ОСВОБОДИТЬ ЖИВОТНЫХ?',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        'Привет, друзья! 🙌  Вы можете смело предлагать свою помощь. Достаточно оставить наводку на свою страницу в социальных сетях, когда вы участвуете в живом диалоге. А если это дебаты в сети — вместе с качественным призывом к веганству в комментариях оставьте объявление...',
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Показать еще'),
                      ),
                    ],
                  ),
                ),
              ),
           Card(
             elevation: 4.0,
             child: Padding(
               padding: const EdgeInsets.all(16.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   const Row(
                     children: [
                       CircleAvatar(
                         backgroundImage: AssetImage('assets/kirill.webp'),
                       ),
                       SizedBox(width: 8.0),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             'Стас Стасов',
                             style: TextStyle(fontWeight: FontWeight.bold),
                           ),
                           Text('2 часа назад'),
                         ],
                       ),
                       Spacer(),
                       Text(
                         'Эко - активизм',
                         style: TextStyle(color: Colors.grey),
                       ),
                     ],
                   ),
                   const SizedBox(height: 16.0),
                   const Text(
                     'Зачем нужны субботники',
                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                   ),
                   const SizedBox(height: 8.0),
                   const Text(
                     'У нас на дверях подъезда каждый год вешают объявление с приглашением на общегородской субботник. Какие-то толковые, даже приветливые записки: мол, уважаемые жители, давайте вместе наведем порядок в своем дворе, приходите, пожалуйста. ',
                   ),
                   TextButton(
                     onPressed: () {},
                     child: const Text('Показать еще'),
                   ),
                 ],
               ),
             ),
           ),
            ],
          ),
        ),
      ),
    );
  }
}

class SliderItem extends StatelessWidget {
  final String text;
  final String imageUrl;

  SliderItem({required this.text, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          gradient: LinearGradient(
            colors: [Colors.black.withOpacity(0.5), Colors.black.withOpacity(0.2)],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        alignment: Alignment.bottomLeft,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 13.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
