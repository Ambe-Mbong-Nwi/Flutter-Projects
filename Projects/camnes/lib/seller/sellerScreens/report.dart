import 'package:flutter/material.dart';

class Reporting extends StatelessWidget {
  const Reporting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xffb80f0a),
        centerTitle: true,
        title: const Text(
          'Report',
        ),
      ),
    );
  }
}