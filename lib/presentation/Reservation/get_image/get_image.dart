import 'package:flutter/material.dart';
import 'package:gram/presentation/Reservation/Result/result_screen.dart';
import 'package:image_picker/image_picker.dart';

import '../../../resource/styles_manager.dart';
import '../../../shared/component/component.dart';
import '../Result/result_screen.dart';

class get_image extends StatefulWidget {
  const get_image({Key? key}) : super(key: key);

  @override
  State<get_image> createState() => _get_imageState();
}

class _get_imageState extends State<get_image> {
  PickedFile? _imageFile;
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: defaultAppBar(),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              onPressed: () {
                showProfileSheet(context: context);
              },
              icon: Icon(Icons.menu),
              color: Colors.black,
            )
          ],
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: Column(children: [
          Center(
            child: Text("now .. scan your eyes",
                style: getRegularStyle(color: Colors.black, fontSize: 24)),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                takePhoto(ImageSource.camera);
              },
              child: Icon(Icons.camera_alt),
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                takePhoto(ImageSource.gallery);
              },
              child: Icon(Icons.photo),
            )
          ])
        ]));
  }

  Future <void> takePhoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(
      source: source,
    );
    setState(() async {
      _imageFile = pickedFile!;
    });
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => result_screen()
      ),
    );
  }
}
