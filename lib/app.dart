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
        items: const [
          homeItem,
          scheduleItem,
          statusItem,
          linksItem,
          settingsItem
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
            builder: (context) => CupertinoPageScaffold(
                  child: switch (index) {
                    0 => const HomeTab(),
                    1 => const ScheduleTab(),
                    2 => const StatusTab(),
                    3 => const LinksTab(),
                    4 => const SettingsTab(),
                    _ => throw Exception('Invalid index $index'),
                  },
                ));
      },
    );
  }
}
