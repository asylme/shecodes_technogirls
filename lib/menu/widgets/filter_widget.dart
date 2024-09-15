import 'package:flutter/material.dart';

class FilterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.close, size: 24.0),
              ),
              Text(
                'Фильтр',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 24.0), 
            ],
          ),
          SizedBox(height: 16.0),
        
          Text(
            'ФОРМАТ ПРОВЕДЕНИЯ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Row(
            children: [
              FilterChip(
                label: Text('Онлайн'),
                onSelected: (bool value) {},
              ),
              SizedBox(width: 8.0),
              FilterChip(
                label: Text('Оффлайн'),
                onSelected: (bool value) {},
              ),
            ],
          ),
          SizedBox(height: 16.0),
          Text(
            'СФЕРА ИНТЕРЕСА',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Column(
            children: [
              CheckboxListTile(              
                title: Text('Эко - активизм'),
                value: false,
                onChanged: (bool? value) {},
              ),
              CheckboxListTile(
                title: Text('Зоо - активизм'),
                value: false,
                onChanged: (bool? value) {},
              ),
              CheckboxListTile(
                title: Text('Волонтерство'),
                value: false,
                onChanged: (bool? value) {},
              ),
              CheckboxListTile(
                title: Text('Ментерство'),
                value: false,
                onChanged: (bool? value) {},
              ),
              CheckboxListTile(
                title: Text('Психология'),
                value: false,
                onChanged: (bool? value) {},
              ),
              CheckboxListTile(
                title: Text('Другое'),
                value: false,
                onChanged: (bool? value) {},
              ),
            ],
          ),
          SizedBox(height: 16.0),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context); 
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF9F86BC),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text('Показать', style: TextStyle(fontSize: 16, color: Colors.white),),
            ),
          ),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}