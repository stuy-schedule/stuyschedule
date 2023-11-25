import 'package:flutter/cupertino.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() {
    return SettingsTabState();
  }
}

class SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text('Settings'),
        ),
      ],
    );
  }
}
