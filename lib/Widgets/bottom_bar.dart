import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(15),
        color: Colors.white,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(
              Icons.house_outlined,
              color: Colors.orange,
              size: 38,
            ),
            Icon(
              Icons.bookmark,
              color: Colors.black26,
              size: 38,
            ),
            Icon(
              Icons.notifications,
              color: Colors.black26,
              size: 38,
            ),
            Icon(
              Icons.person,
              color: Colors.black26,
              size: 38,
            ),
          ],
        ),
      ),
    );
  }
}
