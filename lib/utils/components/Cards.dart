import 'package:flutter/material.dart';

import '../theme/AppColor.dart';

//This file contains different designs for CardViews used in the Application

class CreditCard extends StatelessWidget {
  final Color backgroundColor;

  const CreditCard({super.key, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
        width: screenWidth * 0.8,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Balance",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        ("\$ 250,000.40"),
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Image.asset(
                    'assets/icons/visa.png',
                    width: screenWidth * 0.1,
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Text(" 1234 ", style: Theme.of(context).textTheme.titleMedium),
              Text(" **** ", style: Theme.of(context).textTheme.titleMedium),
              Text(" **** ", style: Theme.of(context).textTheme.titleMedium),
              Text(" 5678 ",
                  style: Theme.of(context).textTheme.titleMedium),
            ]),
            SizedBox(height: screenHeight * 0.029),
            Container(
              decoration: const BoxDecoration(
                color: AppColor.blackColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name",
                          style: Theme.of(context).textTheme.titleSmall,
                          //textAlign: TextAlign.left,
                        ),
                        Text(
                          "Client Name",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Exp",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        Text(
                          "09/10",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class TransactionCard extends StatelessWidget {
  final String transactionName;
  final String description;
  final String payment;
  final Color paymentColor;
  final String iconPath;
  final Color iconColor;
  final Color iconBackgroundColor;

  const TransactionCard(
      {super.key,
      required this.transactionName,
      required this.description,
      required this.payment,
      required this.paymentColor,
      required this.iconPath,
      required this.iconColor,
      required this.iconBackgroundColor});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth * 1.2,
      height: screenHeight * 0.09,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Container(
              width: screenWidth * 0.15,
              height: screenHeight * 0.09,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: iconBackgroundColor),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(iconPath, color: iconColor),
              ),
            ),
            SizedBox(width: screenWidth * 0.03),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  transactionName,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: AppColor.blackColor),
                ),
                Text(description,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontSize: 12)),
              ],
            ),
            const Spacer(),
            Text(
              payment,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: paymentColor),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeMainCard extends StatelessWidget {
  const HomeMainCard({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth,
      height: screenHeight * 0.22,
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Total Balance",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: Colors.white)),
                    Text("\$ 250,000.40",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(color: Colors.white, fontSize: 32)),
                  ],
                ),
              ),
              Image.asset(
                'assets/images/card_shapes.png',
                width: screenWidth * 0.22,
              ),
            ],
          ),
          Row(
            children: [
              Image.asset(
                'assets/images/green_circle.png',
                height: screenHeight * 0.1,
              ),
              const Spacer(),
              Text("My Wallet",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: Colors.white, fontSize: 15)),
              const Padding(
                padding: EdgeInsets.only(right: 20.0, bottom: 10.0, left: 8.0),
                child: Icon(Icons.arrow_circle_right,
                    color: Colors.white, size: 45),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SecondHomeCard extends StatelessWidget {
  const SecondHomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth,
      height: screenHeight * 0.09,
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 35.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.arrow_downward_rounded,
              color: AppColor.greenColor,
              size: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Income",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: Colors.white)),
                Text("\$ 20,000",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: Colors.white, fontSize: 20)),
              ],
            ),
            Container(
              width: screenWidth * 0.004,
              height: screenHeight * 0.05,
              color: AppColor.backgroundColor,
            ),
            const Icon(
              Icons.arrow_upward_rounded,
              color: Colors.red,
              size: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Outcome",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: Colors.white)),
                Text("\$ 17,000",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: Colors.white, fontSize: 20)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class EarningsCard extends StatelessWidget {
  final Color backgroundColor;
  final String initialCharacter;
  final String EarningTitle;
  final String Earnings;
   const EarningsCard(
      {super.key,
      required this.backgroundColor,
      required this.initialCharacter,
      required this.EarningTitle,
      required this.Earnings});


  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth * 0.35,
      height: screenHeight * 0.2,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Container(
              width: screenWidth * 0.1,
              height: screenHeight * 0.08,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color:AppColor.backgroundColor),
              child: Center(
                child: Text(initialCharacter,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.black,fontWeight: FontWeight.bold)),
              ),
            ),
            const Spacer(),
            Text(EarningTitle,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(color: Colors.white)),
            Text(Earnings,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Colors.white,fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}

class SettingsButtons extends StatelessWidget {
  final IconData buttonIcon;
  final String buttonText;
  const SettingsButtons({Key? key, required this.buttonIcon, required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return  Container(
      width: screenWidth,
      height: screenHeight*0.08,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(buttonIcon,color: AppColor.blackColor),
            SizedBox(width: screenWidth*0.03,),
            Text(buttonText,style: Theme.of(context)
                .textTheme
                .titleMedium?.copyWith(fontWeight: FontWeight.bold,color: AppColor.blackColor)),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios_rounded,color: AppColor.blackColor),
          ],
        ),
      ),
    );
  }
}
 
