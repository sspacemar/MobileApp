import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Grid Layout',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.orange),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 20),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              const SizedBox(width: 20),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              const SizedBox(width: 20),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 20),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              const SizedBox(width: 20),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              const SizedBox(width: 20),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            ],
          )
        ],
      ),
    );
  }
}
