import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:praticetest/bottomScreen/hom_sceen.dart';
import 'package:praticetest/bottomScreen/main_screen.dart';

import 'package:praticetest/firebase_options.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:praticetest/theme/Themedata/apptheme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 700),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: AppTheme.lightTheme,

          home: child,
        );
      },
      child: const HomeMainScreen(),
    );
  }
}
