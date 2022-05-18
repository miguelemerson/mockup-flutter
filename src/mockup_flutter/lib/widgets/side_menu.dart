import 'package:flutter/material.dart';
import 'package:mockup_flutter/screens/screens.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const _DrawerHeader(),
          ListTile(
              leading: const Icon(Icons.padding_outlined),
              title: const Text('Home'),
              onTap: () {
                Navigator.pushReplacementNamed(context, HomeScreen.routerName);
              }),
          ListTile(
              leading: const Icon(Icons.people),
              title: const Text('Persona'),
              onTap: () {}),
          ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pushReplacementNamed(
                    context, SettingsScreen.routerName);
              })
        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/menu-img.jpg'), fit: BoxFit.cover)),
    );
  }
}
