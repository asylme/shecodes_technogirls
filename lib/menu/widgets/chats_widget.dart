import 'package:first_app/menu/chats_screen.dart';
import 'package:flutter/material.dart';



class ChatsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: TextButton(
          onPressed: () {                Navigator.pop(context);
 },
          child: Icon(Icons.arrow_back_ios)
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Асылай Арыстанбекова',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              'был(а) недавно',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/asylai.jpg'),
              ),
              SizedBox(width: 18,)
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: [
                Center(child: Text('Сегодня', style: TextStyle(color: Colors.grey))),
                Align(
                  alignment: Alignment.centerRight,
                  child: MessageBubble(
                    message: 'привет',
                    time: '00:53',
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: MessageBubble(
                    message: 'сегодня пойдёшь на субботник?',
                    time: '00:54',
                  ),
                ),
              ],
            ),
          ),
          ChatInputField(),
        ],
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String message;
  final String time;

  MessageBubble({required this.message, required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4.0),
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: Color(0xFF9F86BC),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
          bottomLeft: Radius.circular(16.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            message,
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
          SizedBox(height: 5),
          Text(
            time,
            style: TextStyle(color: Colors.white70, fontSize: 12.0),
          ),
        ],
      ),
    );
  }
}

class ChatInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        border: Border(
          top: BorderSide(color: Colors.grey[300]!),
        ),
      ),
      child: Row(
        children: [
          
          IconButton(
            icon: Icon(Icons.image, color: Color(0xFF9F86BC)),
            onPressed: () {
              // Галерея
            },
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Сообщение',
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.mic, color: Color(0xFF9F86BC)),
            onPressed: () {
              // Запись голоса
            },
          ),
          IconButton(
            icon: Icon(Icons.send, color: Color(0xFF9F86BC)),onPressed: () {              // Отправить сообщение
            },
          ),
        ],
      ),
    );
  }
}