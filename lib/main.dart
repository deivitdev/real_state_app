import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      TopBar(),
                      SizedBox(height: 30),
                      SearchBar(),
                      SizedBox(height: 30),
                      Title(),
                      SizedBox(height: 30),
                      MainCard(),
                      SizedBox(height: 30),
                      Title2(),
                      LastestNews(),
                    ],
                  ),
                ),
                Expanded(child: Container()),
                const BottomBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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

class LastestNews extends StatelessWidget {
  const LastestNews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
          style: TextStyle(color: Colors.black38),
        ),
      ],
    );
  }
}

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
    );
  }
}

class Title extends StatelessWidget {
  const Title({
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

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.red,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Search you dream house',
            style: TextStyle(color: Colors.black26, fontSize: 20),
          ),
          Icon(Icons.search)
        ],
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.redAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Current Location',
                style: TextStyle(color: Colors.black45),
              ),
              const SizedBox(height: 5),
              Row(
                children: const [
                  Icon(Icons.place, color: Colors.orange),
                  Text(
                    'Jakarta, Indonesia',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          const CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/avatar.jpg'),
          )
        ],
      ),
    );
  }
}
