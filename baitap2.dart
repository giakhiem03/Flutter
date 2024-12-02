import 'package:flutter/material.dart';

class CourseList extends StatelessWidget {
  const CourseList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              leading: Card(
                child: Image.asset(
                  '../assets/images/OIP.jpg',
                  width: 100,
                  height: 100,
                ),
              ),
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text('Bài viết 1'),
                      SizedBox(height: 8),
                      Text(
                        'mô tả bài viết 1',
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Card(
                child: Image.asset(
                  '../assets/images/OIP.jpg',
                  width: 100,
                  height: 100,
                ),
              ),
              title: const Row(
                children: [
                  Column(
                    children: [
                      Text('Bài viết 1'),
                      SizedBox(height: 8),
                      Text(
                        'mô tả bài viết 1',
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Card(
                child: Image.asset(
                  '../assets/images/OIP.jpg',
                  width: 100,
                  height: 100,
                ),
              ),
              title: const Row(
                children: [
                  Column(
                    children: [
                      Text('Bài viết 1'),
                      SizedBox(height: 8),
                      Text(
                        'mô tả bài viết 1',
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
