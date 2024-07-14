import 'package:dana_nagad/app/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:flutter/services.dart';

import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: AppColor.primaryAppColor, // Set your desired color
    statusBarIconBrightness: Brightness.light, // For light icons
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => child!,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Doc Life",
        initialRoute: //AppPages.INITIAL,
        AppPages.LOGIN,
        getPages: AppPages.routes,
        theme: ThemeData(
          useMaterial3: false,
          primarySwatch: Colors.blue,
          brightness: Brightness.light,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Roboto',
        ),
      ),
    );
  }
}
