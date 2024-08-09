import 'package:fintech/ui/HomePage.dart';
import 'package:fintech/ui/ProfilePage.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.mainTheme,
      home: ProfilePage(),
      routes: {
        WalletPage.routeName: (context) => WalletPage(),
        HomePage.routeName: (context) => HomePage(),
        ProfilePage.routeName: (context) => ProfilePage(),
      },
    );
  }
}
