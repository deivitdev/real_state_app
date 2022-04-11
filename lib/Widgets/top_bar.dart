import 'package:flutter/material.dart';

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
