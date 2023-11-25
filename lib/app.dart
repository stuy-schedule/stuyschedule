import 'package:flutter/cupertino.dart';

import 'screens/home.dart';
import 'screens/links.dart';
import 'screens/schedule.dart';
import 'screens/settings.dart';
import 'screens/status.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.list_number),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            // TODO: change icon to escalator
            icon: Icon(CupertinoIcons.exclamationmark_triangle),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.link),
            label: 'Links',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Settings',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return switch (index) {
          0 => CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(
                child: HomeTab(),
              ),
            ),
          1 => CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(
                child: ScheduleTab(),
              ),
            ),
          2 => CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(
                child: StatusTab(),
              ),
            ),
          3 => CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(
                child: LinksTab(),
              ),
            ),
          4 => CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(
                child: SettingsTab(),
              ),
            ),
          _ => throw Exception('Invalid index $index'),
        };
      },
    );
  }
}
