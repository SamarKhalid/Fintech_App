import 'package:fintech/utils/components/Cards.dart';
import 'package:flutter/material.dart';
import '../utils/theme/AppColor.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  static String routeName = 'Profile page';

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SizedBox(height: screenHeight*0.05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Image.asset("assets/icons/profile_icon.png",
                              width: screenWidth * 0.35),
                          Text(
                            "Client Name",
                            style: (Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight*0.05),
                  const SettingsButtons(buttonIcon: Icons.person, buttonText: "Profile Settings"),
                  SizedBox(height: screenHeight*0.03),
                  const SettingsButtons(buttonIcon: Icons.receipt_long, buttonText: "Transactions"),
                  SizedBox(height: screenHeight*0.03),
                  const SettingsButtons(buttonIcon: Icons.credit_card, buttonText: "My Cards"),
                  SizedBox(height: screenHeight*0.03),
                  const SettingsButtons(buttonIcon: Icons.attach_money_rounded, buttonText: "My Earnings"),
                  SizedBox(height: screenHeight*0.03),
                  const SettingsButtons(buttonIcon: Icons.logout_rounded, buttonText: "Log out"),
                ],
              ),
            ),
        ),
      ),
    );
  }
}
