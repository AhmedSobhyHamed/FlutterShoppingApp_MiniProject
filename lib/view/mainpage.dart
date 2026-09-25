import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: Column(
        children: [
          Text('Main Page'),
          Expanded(child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              padding: const EdgeInsets.all(10),
              children: [
                Image.asset('assets/images/images.jpg'),
                Image.network('https://picsum.photos/400/300'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}