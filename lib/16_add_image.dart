import 'package:flutter/material.dart';

// The following example displays and image on your screen.
// Download any image from the internet or you may download
// the same image (signin) from undraw.co.
// This time, I need you to look for ways on how to add an Image to your project.
// Please take note that for your image to load successfully,
// it should be stored inside the assets directory.

class AddImage extends StatelessWidget {
  const AddImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.network('https://picsum.photos'),
    );
  }
}
