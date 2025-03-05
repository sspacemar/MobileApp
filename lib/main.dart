import 'package:flutter/material.dart';

void main() {
  runApp(const TrafficLightApp());
}

class TrafficLightApp extends StatelessWidget {
  const TrafficLightApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TrafficLightScreen(),
    );
  }
}

class TrafficLightScreen extends StatefulWidget {
  const TrafficLightScreen({super.key});

  @override
  State<TrafficLightScreen> createState() => _TrafficLightScreenState();
}

class _TrafficLightScreenState extends State<TrafficLightScreen> {
  int _currentLight = 0;

  void _changeLight() {
    setState(() {
      _currentLight = (_currentLight + 1) % 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Traffic Light Animation")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              duration: const Duration(seconds: 1),
              opacity: _currentLight == 0 ? 1.0 : 0.3,
              child: _buildTrafficLight(const Color.fromARGB(235, 206, 57, 47)),
            ),
            const SizedBox(height: 20),
            AnimatedOpacity(
              duration: const Duration(seconds: 1),
              opacity: _currentLight == 1 ? 1.0 : 0.3,
              child:
                  _buildTrafficLight(const Color.fromARGB(255, 222, 202, 75)),
            ),
            const SizedBox(height: 20),
            AnimatedOpacity(
              duration: const Duration(seconds: 1),
              opacity: _currentLight == 2 ? 1.0 : 0.3,
              child: _buildTrafficLight(const Color.fromARGB(255, 55, 153, 89)),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _changeLight,
              child: const Text("เปลี่ยนไฟ"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTrafficLight(Color color) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 15,
            offset: const Offset(0, 4),
          ),
        ],
      ),
    );
  }
}
