import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:to_do_app/doorserve_app_screen/next_page.dart';

import 'controllers/routes/routes.dart';
import 'doorserve_app_screen/Orders_page.dart';
import 'doorserve_app_screen/Orders_page.dart';
import 'doorserve_app_screen/discover_nearest_laundry.dart';
import 'doorserve_app_screen/discover_nearest_laundry.dart';
import 'doorserve_app_screen/discover_nearest_laundry.dart';
import 'doorserve_app_screen/discover_nearest_laundry.dart';
import 'doorserve_app_screen/dry_cleaning.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
       initialRoute: Routes.countscreen,
      getPages: Routes.routes,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: DiscoverNearestLaundry(),
    );
  }
}
