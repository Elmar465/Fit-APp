import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/screens/MainPage.dart';
import 'package:flutter1/widget/customShape.dart';
import 'package:flutter1/widget/infoCard.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'dart:math';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
  static const routeName = 'Menu';
}

class _MenuPageState extends State<MenuPage> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.blue.shade400,
              Colors.blue.shade800,
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
          ),
          SafeArea(
            child: Container(
              width: 200.0,
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  DrawerHeader(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage: NetworkImage(
                            'https://d1bvpoagx8hqbg.cloudfront.net/259/9cf3e02e2794d9d13503a7412da36ccb.jpg'),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Fiurdin Bagirov',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ],
                  )),
                  Expanded(
                      child: ListView(
                    children: [
                      ListTile(
                        onTap: () {},
                        leading: const Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        title: const Text(
                          'Home',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: const Icon(
                          Icons.sports_gymnastics,
                          color: Colors.white,
                        ),
                        title: const Text(
                          'Top Trainers',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: const Icon(
                          Icons.comment,
                          color: Colors.white,
                        ),
                        title: const Text(
                          'Comments',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: const Icon(
                          Icons.help,
                          color: Colors.white,
                        ),
                        title: const Text(
                          'Help',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: const Icon(
                          Icons.login_outlined,
                          color: Colors.white,
                        ),
                        title: const Text(
                          'Log Out',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ))
                ],
              ),
            ),
          ),
          TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: value),
              duration: Duration(milliseconds: 500),
              builder: (_, double val, __) {
                return (Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..setEntry(0, 3, 200 * val)
                    ..rotateY((pi / 6) * val),
                  child: Scaffold(
                    appBar: AppBar(
                      title: Text('Home Page'),
                    ),
                    body: Center(
                      child: Text('Swipe right to open the menu'),
                    ),
                  ),
                ));
              }),
            GestureDetector(
                onHorizontalDragUpdate: (e) {
                  if (e.delta.dx > 0) {
                    setState(() {
                      value = 1;
                    });
                  } else {
                    setState(() {
                      value = 0;
                    });
                  }
                },
            )
        ],
      ),
    );
  }
}
