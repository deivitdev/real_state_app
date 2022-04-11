import 'package:flutter/material.dart';

class TitlePopular extends StatelessWidget {
  const TitlePopular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Text(
          'Popular Properties',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 20),
        Icon(
          Icons.thumb_up_off_alt_sharp,
          size: 20,
          color: Colors.orange,
        ),
        SizedBox(width: 80),
        Text(
          'View More',
          style: TextStyle(
            color: Colors.black38,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
