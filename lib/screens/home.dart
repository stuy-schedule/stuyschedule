import 'package:flutter/cupertino.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() {
    return HomeTabState();
  }
}

class HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text('Home'),
        ),
      ],
    );
  }
}
