import 'package:flutter/material.dart';
import 'package:help_rem/provider/entesprovider.dart';
import 'package:help_rem/provider/foodprovider.dart';
import 'package:help_rem/theme/blue.dart';
import 'package:help_rem/views/create_account_page.dart';
import 'package:help_rem/views/food_create.dart';
import 'package:help_rem/views/dear_one_create.dart';
import 'package:help_rem/views/dear_one_list.dart';
import 'package:help_rem/views/dear_one_specific.dart';
import 'package:help_rem/views/food_especific.dart';
import 'package:help_rem/views/food_page.dart';
import 'package:help_rem/views/login_page.dart';
import 'package:help_rem/views/medicine_page.dart';
import 'package:help_rem/views/medicine_page_create.dart';
import 'package:help_rem/views/menu_page.dart';
import 'package:help_rem/views/physical_activity_create..dart';
import 'package:help_rem/views/physical_activity_page.dart';
import 'package:provider/provider.dart';

class Routes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var themeData = ThemeData(
      primarySwatch: blueTheme(),
    );

    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => EntesProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => FoodProvider(),
          )
        ],
        child: MaterialApp(
            theme: themeData,
            debugShowCheckedModeBanner: false,
            initialRoute: '/',
            routes: {
              '/': (context) => MenuPage(),
              '/dear_one_list': (context) => DearOneList(),
              '/dear_one_specific': (context) => DearOneSpecific(),
              '/create_account_page': (context) => CreateAccount(),
              '/create_dear_one': (context) => CreateDearOne(),
              '/medicine_page': (context) => MedicinePage(),
              '/create_medicine': (context) => CreateMedicine(),
              '/food_page': (context) => FoodPage(),
              '/create_food': (context) => CreateFood(),
              '/food_especific': (context) => FoodSpecific(),
              '/physical_activity_page': (context) => PhysicalActivity(),
              '/physical_activity_create': (context) =>
                  PhysicalActivityCreate(),
            }));
  }
}
