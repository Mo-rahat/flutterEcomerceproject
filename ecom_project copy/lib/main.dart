import 'package:ecom_project/pages/dashboard_page.dart';
import 'package:ecom_project/pages/launcher_page.dart';
import 'package:ecom_project/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375.0, 812.0),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (){
        return MaterialApp(  
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LauncherPage(),
        routes: {
          LauncherPage.routeName: (context) => LauncherPage(),
          // ignore: equal_keys_in_map
          LoginPage.routeName: (context) => LoginPage(),
          DashboardPage.routeName: (context) => DashboardPage(),
        },
      ),
      },
    );
  }
}
