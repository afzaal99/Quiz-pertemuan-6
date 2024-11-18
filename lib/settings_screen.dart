import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Settings', style: themeProvider.textStyle),
      ),
      body: ListView(
        children: [
          // Theme Selection
          ListTile(
            title: Text('Theme A', style: themeProvider.textStyle),
            onTap: () {
              themeProvider.setTheme('ThemeA');
            },
          ),
          ListTile(
            title: Text('Theme B', style: themeProvider.textStyle),
            onTap: () {
              themeProvider.setTheme('ThemeB');
            },
          ),
          ListTile(
            title: Text('Theme C', style: themeProvider.textStyle),
            onTap: () {
              themeProvider.setTheme('ThemeC');
            },
          ),
          Divider(),
          // Font Selection
          ListTile(
            title: Text('Font Roboto', style: themeProvider.textStyle),
            onTap: () {
              themeProvider.setFont('Roboto');
            },
          ),
          ListTile(
            title: Text('Font Pacifico', style: themeProvider.textStyle),
            onTap: () {
              themeProvider.setFont('Pacifico');
            },
          ),
          ListTile(
            title: Text('Font Source Code Pro', style: themeProvider.textStyle),
            onTap: () {
              themeProvider.setFont('SourceCodePro');
            },
          ),
        ],
      ),
    );
  }
}
