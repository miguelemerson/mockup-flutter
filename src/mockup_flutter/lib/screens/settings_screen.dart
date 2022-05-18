import 'package:flutter/material.dart';
import 'package:mockup_flutter/widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {
  static const String routerName = 'Settings';

  const SettingsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        drawer: const SideMenu(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text('Ajustes',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold)),
              const Divider(),
              SwitchListTile.adaptive(
                  value: true,
                  title: const Text('Modo oscuro'),
                  onChanged: (value) {}),
              const Divider(),
            ]),
          ),
        ));
  }
}
