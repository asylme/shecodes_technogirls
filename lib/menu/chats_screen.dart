import 'package:first_app/menu/widgets/chats_widget.dart';
import 'package:flutter/material.dart';



class ChatsScreen extends StatelessWidget {
  final List<User> users = [
    User(name: 'Assel Tasbulatova', role: 'Волонтер', avatar: null),
    User(name: 'Nargiz Suleimenova', role: 'Волонтер', avatar: null),
    User(name: 'Daniyar Akylbek', role: 'Волонтер', avatar: null),
    User(name: 'Bakgeldi Alkhabay', role: 'Волонтер', avatar: null),
    User(name: 'Асылай Арыстанбекова', role: 'Ментор', avatar: 'assets/asylai.jpg'),
    User(name: 'Аяжан Жаксыбек', role: 'Ментор', avatar: 'assets/ayazhan.jpg'),
    User(name: 'Еркебулан Жакан', role: 'Волонтер', avatar: null),
    User(name: 'Болат Ахметов', role: 'Волонтер', avatar: null),
    User(name: 'Дмитрий Сенгилеев', role: 'Волонтер', avatar: null),
    User(name: 'Хасен Зейнулла', role: 'Волонтер', avatar: null),
    User(name: 'Еркен Муканов', role: 'Волонтер', avatar: null),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Написать сообщение'),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () {
              // Add filter functionality here
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Поиск пользователей',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.grey[200],
                filled: true,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return UserTile(user: users[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class User {
  final String name;
  final String role;
  final String? avatar;

  User({required this.name, required this.role, this.avatar});
}

class UserTile extends StatelessWidget {
  final User user;

  UserTile({required this.user});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){ Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatsWidget()), 
              );},
      child: ListTile(
        leading: user.avatar != null
            ? CircleAvatar(
                backgroundImage: AssetImage(user.avatar!),
              )
            : CircleAvatar(
                child: Text(
                  user.name[0],
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                backgroundColor: Colors.green,
              ),
        title: Text(user.name),
        subtitle: Text(user.role),
      ),
    );
  }
}