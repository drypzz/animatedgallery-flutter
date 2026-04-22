import 'package:flutter/material.dart';
import 'dart:math';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animacao;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    
    _animacao = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _controller.repeat(); 
  }

  @override
  void dispose() {
    _controller.dispose(); 
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galeria de Animações'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text('Animação Explícita (AnimatedBuilder)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          
          Center(
            child: AnimatedBuilder(
              animation: _animacao,
              builder: (context, child) {
                return Transform.rotate(
                  angle: _animacao.value * 2 * pi, 
                  child: child,
                );
              },
              child: const Icon(Icons.refresh, size: 100, color: Colors.blue), 
            ),
          ),
          
          const Divider(height: 40),
          const Text('Hero Animation (Clique no ícone)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),

          Center(
            child: GestureDetector(
              child: const Hero(
                tag: 'produto-123', 
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.person, size: 50, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}