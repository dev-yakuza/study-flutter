import 'dart:io';

import 'package:flutter/material.dart';

class PhotoPreview extends StatelessWidget {
  final String imagePath;

  const PhotoPreview({required this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Preview')),
      body: Container(
        color: Colors.grey,
        child: Center(
          child: Image.file(
            File(imagePath),
          ),
        ),
      ),
    );
  }
}
