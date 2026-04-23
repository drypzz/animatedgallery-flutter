import 'package:flutter/material.dart';

class Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue.withValues(alpha: 0.1) 
      ..style = PaintingStyle.fill;
      
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 3;
    
    canvas.drawCircle(center, radius, paint); 
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}