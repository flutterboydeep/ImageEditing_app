import 'dart:io';

import 'package:flutter/material.dart';

class EditImage extends StatefulWidget {
  final String ImagePath;
  EditImage({super.key, required this.ImagePath});
  State<EditImage> createState() => _EditImage();
}

class _EditImage extends State<EditImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Edit")),
      body: Container(
        child: Image.file(File(widget.ImagePath)),
      ),
    );
  }
}
