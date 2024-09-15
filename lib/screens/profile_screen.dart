import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ProfileScreen()));
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Профиль'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 16),
            // Верхняя карточка с аватаром и данными пользователя
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey[300],
                        child: Icon(Icons.person, size: 50, color: Colors.white),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Фамилия Имя Отчество',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Последняя дата визита: 13.09.2022, 20:13',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 16),
                      // ИИН
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('ИИН', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('891212678591'),
                        ],
                      ),
                      Divider(thickness: 1),
                      // Контактные данные
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Контактные данные',
                          style: TextStyle(color: Color(0xFF9F86BC), fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.email, color: Colors.grey),
                          SizedBox(width: 8),
                          Text('mamirov-az@mail.ru'),
                          Spacer(),
                          Icon(Icons.edit, color: Color(0xFF9F86BC)),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.phone, color: Colors.grey),
                          SizedBox(width: 8),
                          Text('+7 (701) 125 32 32'),
                          Spacer(),
                          Icon(Icons.edit, color:Color(0xFF9F86BC)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            // Карточки с меню
            MenuTile(title: 'Личные данные', icon: Icons.person),
            MenuTile(title: 'Помощь', icon: Icons.help_outline),
            MenuTile(title: 'Русский', icon: Icons.language),
            MenuTile(title: 'Настройки', icon: Icons.settings),
            MenuTile(title: 'О приложении', icon: Icons.info_outline),
          ],
        ),
      ),
    );
  }
}

// Компонент для каждой кнопки в меню
class MenuTile extends StatelessWidget {
  final String title;
  final IconData icon;

  MenuTile({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 2,
        child: ListTile(
          leading: Icon(icon, color: Color(0xFF9F86BC)),
          title: Text(title),
          trailing: Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {
            // Действие при нажатии
          },
        ),
      ),
    );
  }
}