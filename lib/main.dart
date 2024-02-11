import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF59B4C3),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var imageItem = [
    {'img': 'https://images.pexels.com/photos/170811/pexels-photo-170811.jpeg'},
    {'img': 'https://images.pexels.com/photos/210019/pexels-photo-210019.jpeg'},
    {'img': 'https://images.pexels.com/photos/112460/pexels-photo-112460.jpeg'},
    {'img': 'https://images.pexels.com/photos/116675/pexels-photo-116675.jpeg'},
    {
      'img':
      'https://images.pexels.com/photos/1592384/pexels-photo-1592384.jpeg'
    },
    {'img': 'https://images.pexels.com/photos/707046/pexels-photo-707046.jpeg'},
    {'img': 'https://images.pexels.com/photos/909907/pexels-photo-909907.jpeg'},
    {
      'img':
      'https://images.pexels.com/photos/35967/mini-cooper-auto-model-vehicle.jpg'
    },
    {'img': 'https://images.pexels.com/photos/120049/pexels-photo-120049.jpeg'},
    {'img': 'https://images.pexels.com/photos/733745/pexels-photo-733745.jpeg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .primaryColor,
        centerTitle: true,
        title: const Text(
          'Image With ListView Builder',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: imageItem.length,
        itemBuilder: (context, index) {
          return Image.network(imageItem[index]['img']!);
        },
      ),
    );
  }
}
