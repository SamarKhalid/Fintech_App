import 'package:flutter/material.dart';

import '../utils/components/Cards.dart';
import '../utils/components/Lists.dart';
import '../utils/theme/AppColor.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  static String routeName = 'wallet page';

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
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
              //Upper bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Image.asset('assets/icons/profile_icon.png',width: screenWidth*0.09,),
                  Text("Wallet", style: Theme.of(context).textTheme.titleLarge),
                  const Icon(Icons.menu_rounded,
                      size: 40, color: AppColor.blackColor),
                ],
              ),
              SizedBox(height: screenHeight * 0.03),
              //cards list
              SizedBox(
                width: screenWidth,
                height: screenHeight * 0.3,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Lists.creditCardColors.length,
                  itemBuilder: (context, index) {
                    return Container(
                      //space between cards
                      margin: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: CreditCard(
                          backgroundColor: Lists.creditCardColors[index]),
                    );
                  },
                ),
              ),
              SizedBox(height: screenHeight * 0.035),
              //Transactions
              Row(
                children: [
                  Text("Transactions",
                      style: Theme.of(context).textTheme.titleLarge),
                  const Spacer(),
                  Image.asset(
                    'assets/icons/adjust_icon.png',
                    width: screenWidth * 0.055,
                    // height: screenHeight *0.05,
                  ),
                ],
              ),
              SizedBox(
                width: screenWidth,
                height: screenHeight * 0.45,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      //space between cards
                      margin: const EdgeInsets.symmetric(horizontal: 6.0,vertical: 6.0),
                      child: TransactionCard(
                          transactionName: Lists.transactionNames[index],
                          description: Lists.transactionDescriptions[index],
                          payment: Lists.transactionsPayments[index],
                          paymentColor: Lists.transactionsPaymentsColors[index],
                          iconPath: Lists.transactionsIconPaths[index],
                          iconColor: Lists.transactionIconColors[index],
                          iconBackgroundColor: Lists.transactionIconBackgrounds[index]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}