import 'package:flutter/material.dart';
import 'package:item_list_app/color-palette/palette.dart';
import 'package:item_list_app/pages/itemlist.dart';
import 'package:item_list_app/pages/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Item Listing App',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: Palette.backgroundColor),
      initialRoute: '/',
      routes: {
        '/': (context) => const loginPage(),
        '/item-dashboard': (context) => const itemDashboard(),
      },
    );
  }
}
