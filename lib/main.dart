import 'package:first_app/menu/bonus_screen.dart';
import 'package:first_app/menu/chats_screen.dart';
import 'package:first_app/menu/events_screen.dart';
import 'package:first_app/menu/pets_screen.dart';
import 'package:first_app/menu/qr_screen.dart';
import 'package:first_app/menu/shop_screen.dart';
import 'package:first_app/splash_screen.dart';
import 'package:image_picker/image_picker.dart';

import 'screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  Future<void> _openCamera() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      print('Изображение выбрано: ${pickedFile.path}');
    } else {
      print('Изображение не выбрано.');
    }
  }

  int _selectedIndex = 0;

  static List<Widget> _pages = <Widget>[
    HomeScreen(),
    HomeScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 1) {
      _showBottomMenu();
    }
  }

  void _showBottomMenu() {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 3,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            _buildMenuItem('assets/events.png', 'Мероприятия', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EventsScreen()), 
              );
            }),
            _buildMenuItem('assets/chats.png', 'Чаты', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatsScreen()));
            }),
            _buildMenuItem('assets/qr.png', 'QR ', () {_openCamera();
            }),
            _buildMenuItem('assets/shop.png', 'Магазин', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShopScreen()),
              );
            }),
              _buildMenuItem('assets/bonus.png', 'Бонус', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BonusScreen()),
              );
            }),
            _buildMenuItem('assets/house.png', 'Хотим домой', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PetsScreen()),
              );
            }),
          ],
        ),
      );
    },
  );
}

Widget _buildMenuItem(String icon, String title, VoidCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(

          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Transform.scale(scale:1.5,child:  Image.asset(icon)),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 13),
        ),
      ],
    ),
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar:BottomNavigationBar(
  items: <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Column(
        children: [
                    const SizedBox(height: 4), 

          Image.asset(
            _selectedIndex == 0 ? 'assets/home_selected.png' : 'assets/home.png',
            
          ),
          const SizedBox(height: 7), 
          const Text('Главная', style: TextStyle(fontSize: 11)) 
        ],
      ),
      label: '', 
    ),
    BottomNavigationBarItem(
      icon: Column(
        children: [
          Image.asset(
            _selectedIndex == 1 ? 'assets/menu_selected.png' : 'assets/menu.png',
          ),
          const SizedBox(height: 7), 
          const Text('Меню', style: TextStyle(fontSize: 11)) 
        ],
      ),
      label: '', 
    ),
    BottomNavigationBarItem(
      icon: Column(
        children: [
          Image.asset(
            _selectedIndex == 2 ? 'assets/profile_selected.png' : 'assets/profile.png',
          ),
          const SizedBox(height: 7), 
          const Text('Профиль', style: TextStyle(fontSize: 11)) 
        ],
      ),
      label: '', 
    ),
  ],
  currentIndex: _selectedIndex,
  selectedItemColor: const Color(0xFF9F86BC),
  onTap: _onItemTapped,
  unselectedLabelStyle: const TextStyle(fontSize: 11),
  selectedLabelStyle: const TextStyle(fontSize: 12),
  type: BottomNavigationBarType.fixed, 
),
 );
  }
}
