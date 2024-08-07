import 'package:fintech/utils/components/Cards.dart';
import 'package:fintech/utils/theme/AppColor.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static String routeName = 'home page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/icons/profile_icon.png',width: screenWidth*0.09),
                 SizedBox(width: screenWidth * 0.03),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Good Morning!", style: Theme.of(context).textTheme.titleSmall),
                      Text("Client Name", style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppColor.blackColor)),
                    ],
                  ),
                  Spacer(),
                  const Icon(Icons.notifications_none_rounded,
                      size: 30, color: AppColor.blackColor),
                ],
              ),
              SizedBox(height: screenHeight * 0.03),
              HomeMainCard(),

            ],
          ),
        ),
      ),
    );
  }
}
