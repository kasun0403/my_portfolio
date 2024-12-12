import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  final String imgURL;
  const SocialIcon({super.key, required this.imgURL});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      onPressed: () {},
      child: Image.network(imgURL),
    );
  }
}
