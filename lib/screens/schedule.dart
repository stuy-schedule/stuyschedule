import 'package:flutter/cupertino.dart';

class ScheduleTab extends StatefulWidget {
  const ScheduleTab({super.key});

  @override
  State<ScheduleTab> createState() {
    return ScheduleTabState();
  }
}

class ScheduleTabState extends State<ScheduleTab> {
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text('Schedule'),
        ),
      ],
    );
  }
}
