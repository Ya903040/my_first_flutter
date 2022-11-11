import 'package:flutter/material.dart';
import 'package:test1/other/LogIn.dart';

// ignore: must_be_immutable
class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          accountName: const Text('Suleiman'),
          accountEmail: Text(email_value),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.asset(
                '../../assets/images/avatar.png',
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
          ),
          decoration: const BoxDecoration(
              color: Colors.limeAccent,
              image: DecorationImage(
                image: AssetImage(
                  '../../assets/images/sunset_back_ava.jpg',
                ),
                fit: BoxFit.cover,
              )),
        ),
        ListTile(
          leading: const Icon(Icons.one_k),
          title: const Text('Clicker'),
          onTap: () => Navigator.pushNamed(context, '/clicker'),
        ),
        ListTile(
          leading: const Icon(Icons.two_k),
          title: const Text('Favorite'),
          onTap: () => Navigator.pushNamed(context, '/silver_grid'),
        ),
        ListTile(
          leading: const Icon(Icons.three_k),
          title: const Text('Gallery'),
          onTap: () => Navigator.pushNamed(context, '/third'),
        ),
        ListTile(
          leading: const Icon(Icons.webhook),
          title: const Text('GameScreen'),
          onTap: () => Navigator.pushNamed(context, '/game'),
        ),
        ListTile(
          leading: const Icon(Icons.exit_to_app),
          title: const Text('Favorite'),
          onTap: () => Navigator.pushNamed(context, '/'),
        ),
      ],
    ));
  }
}
