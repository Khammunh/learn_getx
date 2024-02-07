import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    // String _selectedItem = 'Language';
    String _selectedItem = 'Language';
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              // Add your onTap functionality here
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              // Add your onTap functionality here
              Navigator.pop(context); // Close the drawer
            },
          ),
          // Add a divider
          Divider(),
          // Add a dropdown menu
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: DropdownButton<String>(
              value: _selectedItem,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedItem =
                      newValue ?? 'Language'; // Ensure newValue is not null

                  // Update locale to 'lao' when 'lao' is selected
                  if (_selectedItem == 'lao') {
                    Get.updateLocale(const Locale('lao'));
                  }
                  // Update locale to 'en' when 'en' is selected
                  else if (_selectedItem == 'en') {
                    Get.updateLocale(const Locale('en'));
                  }
                });
              },
              items: <String>['Language', 'en', 'lao']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
