import 'package:flutter/material.dart';
import '../painters/painter.dart';
import '../widgets/custom_badge.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool _grande = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes Animados'),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: CustomPaint(
              painter: Painter(),
            ),
          ),
          
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Hero(
                  tag: 'produto-123', 
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.person, size: 80, color: Colors.white),
                  ),
                ),
                
                const SizedBox(height: 40),
                const Text('Animação Implícita (AnimatedContainer)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),

                GestureDetector(
                  onTap: () {
                    setState(() => _grande = !_grande); 
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                    width: _grande ? 200 : 100,
                    height: _grande ? 200 : 100,
                    decoration: BoxDecoration(
                      color: _grande ? Colors.blue : Colors.red,
                      borderRadius: BorderRadius.circular(_grande ? 100 : 10), 
                    ),
                    child: const Center(
                      child: Text(
                        'Clique!',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                
                const SizedBox(height: 40),
                
                PrimaryButton(
                  texto: 'Voltar',
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}