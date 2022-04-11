import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30, top: 20),
        child: Column(
          children: const [
            ImagePrice(),
            SizedBox(height: 30),
            Description(),
          ],
        ),
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Minimalist House',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
          const Icon(
            Icons.bookmark_border,
            color: Colors.black45,
            size: 50,
          )
        ],
      ),
    );
  }
}

class ImagePrice extends StatelessWidget {
  const ImagePrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        child: Stack(
          children: [
            const Image(
              image: AssetImage('assets/house.jpg'),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, top: 10),
              alignment: Alignment.center,
              height: 60,
              width: 100,
              color: Colors.orange,
              child: const Center(
                child: Text(
                  "\$340 /Month",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
