import 'package:flutter/material.dart';

class Excercite1 extends StatelessWidget {

  const Excercite1({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Excercite1'),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            padding: const EdgeInsets.all(16.0),
            color: Colors.blue,
            child: const Card(
              color: Colors.blue,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.yellow,
                    backgroundImage: NetworkImage('https://picsum.photos/200/200'),
                  ),
                  SizedBox(
                    height:20
                  ),
                  Text(
                    'Tên người dùng',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                      height:12
                  ),
                  Row(
                    children: [
                      Icon(Icons.email),
                      SizedBox(height: 8,),
                      Text('Email: giakhiem271@gmail.com')
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
    );
  }
}