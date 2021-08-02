import 'package:flutter/material.dart';
import 'package:help_rem/theme/blue.dart';
import 'package:help_rem/views/create_account_page.dart';
import 'package:help_rem/views/dear_one_list.dart';
import 'package:help_rem/views/dear_one_specific.dart';
import 'package:help_rem/views/login_page.dart';
import 'package:help_rem/views/menu_page.dart';

main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var themeData = ThemeData(
      primarySwatch: blueTheme(),
    );

    return MaterialApp(
        theme: themeData,
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => LoginPage(),
          '/dear_one_list': (context) => DearOneList(),
          '/dear_one_specific': (context) => DearOneSpecific(),
          '/create_account_page': (context) => CreateAccount(),
        });
  }
}
