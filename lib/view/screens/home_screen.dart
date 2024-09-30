import 'package:boxigo_assignment/view/util/app_colors.dart';
import 'package:flutter/material.dart';

import 'leads_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;

  final List<Widget> _widgetOptions = <Widget>[
    const Center(child: Text('Home Screen')),
    LeadsScreen(),
    const Center(child: Text('Task Screen')),
    const Center(child: Text('Report Screen')),
    const Center(child: Text('More Screen')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          TextButton(
            onPressed: () => _onItemTapped(0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.home,
                  color: _selectedIndex == 0 ? AppColors.primaryColor : Colors.grey,
                ),
                Text(
                  'Home',
                  style: TextStyle(
                    color: _selectedIndex == 0 ? AppColors.primaryColor : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () => _onItemTapped(1),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.filter_alt,
                  color: _selectedIndex == 1 ? AppColors.primaryColor : Colors.grey,
                ),
                Text(
                  'Leads',
                  style: TextStyle(
                    color: _selectedIndex == 1 ? AppColors.primaryColor : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () => _onItemTapped(2),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.person,
                  color: _selectedIndex == 2 ? AppColors.primaryColor: Colors.grey,
                ),
                Text(
                  'Tasks',
                  style: TextStyle(
                    color: _selectedIndex == 2 ? AppColors.primaryColor : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () => _onItemTapped(3),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.pie_chart_outline_sharp,
                  color: _selectedIndex == 3 ? AppColors.primaryColor : Colors.grey,
                ),
                Text(
                  'Reports',
                  style: TextStyle(
                    color: _selectedIndex == 3 ? AppColors.primaryColor : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () => _onItemTapped(4),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.more_horiz_sharp,
                  color: _selectedIndex == 4 ?  AppColors.primaryColor : Colors.grey,
                ),
                Text(
                  'More',
                  style: TextStyle(
                    color: _selectedIndex == 4 ? AppColors.primaryColor : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
