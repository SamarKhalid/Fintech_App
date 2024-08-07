import 'package:fintech/ui/HomePage.dart';
import 'package:fintech/ui/WalletPage.dart';
import 'package:fintech/utils/theme/AppTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.mainTheme,
          home: HomePage(),
          routes: {
            WalletPage.routeName: (context) => WalletPage(),
          },
        );
      },
    );
  }
}
