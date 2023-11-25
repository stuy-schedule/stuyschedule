import 'package:flutter/cupertino.dart';

class StatusTab extends StatefulWidget {
  const StatusTab({super.key});

  @override
  State<StatusTab> createState() {
    return StatusTabState();
  }
}

class StatusTabState extends State<StatusTab> {
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text('Status'),
        ),
      ],
    );
  }
}
