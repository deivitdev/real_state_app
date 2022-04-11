import 'package:flutter/material.dart';
import 'package:real_state_app/Widgets/widgets.dart';

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
                      TitlePopular(),
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
