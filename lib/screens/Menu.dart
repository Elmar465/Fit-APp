import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/widget/customShape.dart';
import 'package:flutter1/widget/infoCard.dart';
import 'package:flutter1/widget/sideMenu.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
  static const routeName = 'Menu';
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: 288.0,
      height: double.infinity,
      color: const Color(0xff17203a),
      child: SafeArea(
        child: Column(
          children: [
            const InfoCard(
              name: 'Firudin Baghirov',
              status: 'Member',
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 24.0, top: 32.0, bottom: 16.0),
              child: Text(
                "Menu".toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.white70),
              ),
            ),
            const SideMenuTitle(),
          ],
        ),
      ),
    ));
  }
}


