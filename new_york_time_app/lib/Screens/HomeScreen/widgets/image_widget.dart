import 'package:flutter/material.dart';

class DispalyImageWidget extends StatelessWidget {
  const DispalyImageWidget(
      {super.key, required this.imageUrl, required this.size});
  final String imageUrl;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: imageUrl != null
          ? Image.network(
              imageUrl,
              width: size,
              height: size / 2,
            )
          : Image.network(
              'https://th.bing.com/th/id/OIP.Re2kJhpmZ7PycxWuVsEeuAHaHa?w=144&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7'),
    );
  }
}
