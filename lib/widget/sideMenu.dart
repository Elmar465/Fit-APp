import 'package:flutter/material.dart';

class SideMenuTitle extends StatelessWidget {
  const SideMenuTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Divider(
            color: Colors.white24,
            height: 1.0,
          ),
        ),
        Stack(children: [
           Positioned(
              height: 56.0,
              width: 288.0,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff6792ff),
                    borderRadius: BorderRadius.circular(10)),
              )),
          ListTile(
            onTap: () {},
            leading: const SizedBox(
              height: 34.0,
              width: 34.0,
              child: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            title: const Text(
              'Home',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ]),
        SizedBox(
          height: 12.0,
        ),
        Stack(
          children: [
            ListTile(
                onTap: () {},
                leading: const SizedBox(
                  height: 34.0,
                  width: 34.0,
                  child: Icon(
                    Icons.sports_gymnastics,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  'Top Trainers',
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
        SizedBox(
          height: 12.0,
        ),
        Stack(
          children: [
            ListTile(
                onTap: () {},
                leading: const SizedBox(
                  height: 34.0,
                  width: 34.0,
                  child: Icon(
                    Icons.comment,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  'Communication',
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
        Stack(
          children: [
            ListTile(
                onTap: () {},
                leading: const SizedBox(
                  height: 34.0,
                  width: 34.0,
                  child: Icon(
                    Icons.help,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  'Help',
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ],
    );
  }
}
