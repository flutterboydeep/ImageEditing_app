import 'package:flutter/material.dart';
import 'package:image_editing/screen/EditImage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_platform_interface/image_picker_platform_interface.dart';

class chooseImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Image Editing"),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
          child: Container(
            height: 100,
            width: 200,
            // transform: Matrix4.rotationZ(0),
            decoration: BoxDecoration(
                color: Color.fromARGB(231, 216, 161, 255),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 73, 73, 72),
                    offset: Offset(5, 6),
                    blurRadius: 3,
                    blurStyle: BlurStyle.normal,
                  ),
                ],
                borderRadius: BorderRadius.circular(25)),
            child: Center(
                child: Icon(
              Icons.add,
              size: 60,
            )),
          ),
          onTap: () async {
            final ImagePicker picker = ImagePicker();

            XFile? file = await picker.pickImage(source: ImageSource.gallery);
            if (file != null) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditImage(
                    ImagePath: file.path,
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
