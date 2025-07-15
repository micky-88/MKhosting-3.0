import 'package:flutter/material.dart';

void main() {
  runApp(MKCraftApp());
}

class MKCraftApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MKCraft',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MKCraft'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Join SMP"),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => MainSMPWorld()),
            );
          },
        ),
      ),
    );
  }
}

class MainSMPWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Main SMP World')),
      body: Center(
        child: Text(
          '🌍 Welcome to Main SMP!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
