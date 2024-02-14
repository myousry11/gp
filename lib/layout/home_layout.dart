import 'package:curved_navigation_bar_with_label/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/modules/controls_tasks/controls_tasks_screen.dart';
import 'package:untitled6/modules/dashboard_tasks/dashboard_tasks_screen.dart';
import 'package:untitled6/modules/plants_tasks/plants_tasks_screen.dart';
import 'package:untitled6/modules/report_tasks/report_tasks_screen.dart';
import 'package:untitled6/modules/settings_tasks/settings_task_screen.dart';
import 'package:untitled6/shared/components/constants.dart';

class HomeLayout extends StatefulWidget {
  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;

  List<Widget> screens = [
    DashboardScreen(),
    PlantsTasksScreen(),
    ControlsTasksScreen(),
    ReportScreen(),
    SettingsScreen(),
  ];

  List<String> titles = [
    'Hello',
    'Plants',
    'Controls',
    'Report',
    'Settings',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(titles[currentIndex],
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w500,
              fontSize: 24.0,
            ),
            ),
            currentIndex == 0
                ? Icon(
              Icons.notifications,
              color: Colors.black54,
              size: 30.0,
            )
                : SizedBox(),
          ],
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
      ),
      body: screens[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        height: 65.0,
        backgroundColor: Constants.primaryColor,
        index: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          CurvedNavigationBarItem(
            icon: Icon(Icons.dashboard_customize_outlined),
            label: 'Dashboard',
          ),
          CurvedNavigationBarItem(
            icon: Image.asset('assets/images/plants.png', height: 30.0),
            label: 'Plants',
          ),
          CurvedNavigationBarItem(
            icon: Image.asset('assets/images/controls.png', height: 30.0),
            label: 'Controls',
          ),
          CurvedNavigationBarItem(
            icon: Icon(Icons.analytics_outlined),
            label: 'Report',
          ),
          CurvedNavigationBarItem(
            icon: Icon(Icons.settings_rounded),
            label: 'Settings',
          ),
        ],
      ),
      backgroundColor: Constants.primaryColor,
    );
  }
}
