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
      title: 'Image Network Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ImageNetworkPage(),
    );
  }
}

class ImageNetworkPage extends StatefulWidget {
  const ImageNetworkPage({super.key});

  @override
  State<ImageNetworkPage> createState() => _ImageNetworkPageState();
}

class _ImageNetworkPageState extends State<ImageNetworkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Image Network',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              'https://bit.ly/4d8mqZ8',
              width: 300.0,
              height: 300.0,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.medium,
            ),
          ),
        ),
      ),
    );
  }
}
