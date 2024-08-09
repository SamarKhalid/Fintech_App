import 'package:fintech/utils/components/Cards.dart';
import 'package:fintech/utils/theme/AppColor.dart';
import 'package:flutter/material.dart';
import '../utils/components/Lists.dart';

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
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/icons/profile_icon.png',
                      width: screenWidth * 0.09),
                  SizedBox(width: screenWidth * 0.03),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Good Morning!",
                          style: Theme.of(context).textTheme.titleSmall),
                      Text("Client Name",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.notifications_none_rounded,
                      size: 30, color: AppColor.blackColor),
                ],
              ),
              SizedBox(height: screenHeight * 0.03),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const HomeMainCard(),
                      SizedBox(height: screenHeight * 0.03),
                      const SecondHomeCard(),
                      SizedBox(height: screenHeight * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Earnings",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.blackColor)),
                          Text(
                            "See All",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                    color: Colors.lightBlue,
                                    fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      SizedBox(
                        height: screenHeight * 0.2,
                        // Fixed height for horizontal list
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: Lists.earningCardColors.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 6.0),
                              child: EarningsCard(
                                backgroundColor: Lists.earningCardColors[index],
                                initialCharacter:
                                    Lists.earningInitialChar[index],
                                EarningTitle: Lists.earningTitles[index],
                                Earnings: Lists.earnings[index],
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Transactions",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.blackColor)),
                          Text(
                            "See All",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                    color: Colors.lightBlue,
                                    fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Row(
                        children: [
                          Text("Today",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                    fontSize: 15,
                                  )),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.5,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          physics: const NeverScrollableScrollPhysics(),
                          // Disable scrolling
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 6.0, vertical: 6.0),
                              child: TransactionCard(
                                transactionName: Lists.transactionNames[index],
                                description:
                                    Lists.transactionDescriptions[index],
                                payment: Lists.transactionsPayments[index],
                                paymentColor:
                                    Lists.transactionsPaymentsColors[index],
                                iconPath: Lists.transactionsIconPaths[index],
                                iconColor: Lists.transactionIconColors[index],
                                iconBackgroundColor:
                                    Lists.transactionIconBackgrounds[index],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
