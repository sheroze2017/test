import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:testing/controller/movies_data_controller.dart';
import 'package:testing/view/home_page.dart';

import 'view/movie_details.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: MoviePosterDetails(),
        initialBinding: MyBindings(),
        theme: ThemeData(),
      );
    });
  }
}

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(MovieDataController());
  }
}
