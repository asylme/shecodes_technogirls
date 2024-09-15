import 'package:flutter/material.dart';
import 'dart:async';

import 'main.dart'; // Для таймера

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Настройка таймера для перехода на основной экран
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => MainPage(), // Замените на ваш главный экран
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Логотип или изображение для сплэш-скрина
            Image.asset('assets/logo.png', height: 100), // Замените путь
            SizedBox(height: 20),
            // Прогресс бар или загрузочный текст
          ],
        ),
      ),
    );
  }
}