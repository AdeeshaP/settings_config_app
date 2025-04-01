import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:settings_config_app/providers/theme_provier.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
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
          title: Text('Enable Dark Mode'),
          value: themeProvider.themeMode == ThemeMode.dark,
          onChanged: (value) {
            themeProvider.toggleTheme(value);
          },
        ),
      ),
    );
  }
}
