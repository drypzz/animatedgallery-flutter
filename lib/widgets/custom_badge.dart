import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String texto;
  final VoidCallback onPressed;

  const PrimaryButton({super.key, required this.texto, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary, 
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(texto, style: const TextStyle(fontSize: 16)),
    );
  }
}
