import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:settings_config_app/providers/theme_provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      backgroundColor: themeProvider.themeMode == ThemeMode.dark
          ? Colors.black
          : Colors.white,
      appBar: AppBar(
        title: Text(
          'Dark Mode Toggle',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 2,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: SwitchListTile(
          activeColor: Colors.red,
          inactiveTrackColor: Colors.white,
          inactiveThumbColor: Colors.black,
          title: Text(
            'Enable Dark Mode',
            style: TextStyle(
                fontSize: 20,
                color: themeProvider.themeMode == ThemeMode.dark
                    ? Colors.white
                    : Colors.black),
          ),
          value: themeProvider.themeMode == ThemeMode.dark,
          onChanged: (value) {
            themeProvider.toggleTheme(value);
          },
        ),
      ),
    );
  }
}
