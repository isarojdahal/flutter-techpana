import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class FullScreenImg extends StatelessWidget {
  String imageURL;

  FullScreenImg(this.imageURL);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: PhotoView(
      imageProvider: NetworkImage(imageURL),
    ));
  }
}
