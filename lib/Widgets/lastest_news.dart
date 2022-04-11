import 'package:flutter/material.dart';

class Title2 extends StatelessWidget {
  const Title2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Lastest News',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(
          'View More',
          style: TextStyle(color: Colors.black38, fontSize: 16),
        ),
      ],
    );
  }
}

class LastestNews extends StatelessWidget {
  const LastestNews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage(
                'assets/squareHouse.jpg',
              ),
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Modern House'),
                  Row(
                    children: const [
                      Icon(
                        Icons.place,
                        color: Colors.orange,
                      ),
                      Text(
                        'Jakarta, Indonesia',
                        style: TextStyle(color: Colors.black38),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(child: Container()),
            Column(
              children: const [
                Text(
                  '\$325',
                  style: TextStyle(color: Colors.orange, fontSize: 20),
                ),
                Text(
                  '/Month',
                  style: TextStyle(color: Colors.black38),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
