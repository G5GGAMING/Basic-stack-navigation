import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: FirstScreen()));

// الصفحة الأولى
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("الصفحة الأولى")),
      body: Center(
        child: ElevatedButton(
          child: const Text("الانتقال للصفحة الثانية"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondScreen()),
            );
          },
        ),
      ),
    );
  }
}

// الصفحة الثانية
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("الصفحة الثانية")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("العودة للخلف"),
        ),
      ),
    );
  }
}