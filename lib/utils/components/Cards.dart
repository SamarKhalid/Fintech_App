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
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.2,
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
                        "\$24,500,55",
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
              Column(children: [
                Text(" 1234 ", style: Theme.of(context).textTheme.titleMedium)
              ]),
              Column(
                children: [
                  Text(" **** ", style: Theme.of(context).textTheme.titleMedium)
                ],
              ),
              Column(children: [
                Text(" **** ", style: Theme.of(context).textTheme.titleMedium)
              ]),
              Column(
                children: [
                  Text(" 5678 ",
                      style: Theme.of(context).textTheme.titleMedium),
                ],
              ),
            ]),
            SizedBox(height: screenHeight * 0.023),
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
      {Key? key,
      required this.transactionName,
      required this.description,
      required this.payment,
      required this.paymentColor,
      required this.iconPath,
      required this.iconColor,
      required this.iconBackgroundColor})
      : super(key: key);

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
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 12)),
              ],
            ),
            Spacer(),
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
