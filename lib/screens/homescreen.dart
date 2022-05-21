import 'package:fintech_app_1/Widgets/Neumorphic_card.dart';
import 'package:fintech_app_1/Widgets/Transaction_Scrolling.dart';
import 'package:fintech_app_1/utilities/import.dart';

import '../Widgets/stories.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String name = "jean";
  final String email = "jeanpaul@okaxis";
  final String walletBalance = "20,000";
  final String transaction = "-300";
  final String date = "May 15, 2022";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: Padding(
          padding: kHalfPad,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                height: getHeight(300),
                child: Padding(
                  padding: kHalfPad,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 30,
                            backgroundColor: kPrimary,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  name,
                                  style: const TextStyle(
                                    color: kTextSecondary2,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        "assets/svg/axis_bank.svg"), //svg
                                    Padding(
                                      padding: kQuatHorizontal,
                                      child: Text(
                                        email,
                                        style: const TextStyle(
                                          color: kTextSecondary2,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: getWidth(80),
                          ),
                          SvgPicture.asset(
                            "assets/svg/qr-code-scan.svg",
                            color: kWhite,
                            height: getHeight(20),
                            width: getWidth(20),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: SvgPicture.asset(
                              "assets/svg/bell.svg",
                              color: kWhite,
                              height: getHeight(20),
                              width: getWidth(20),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: getHeight(80),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: kTextPrimaryLight,
                            child: SvgPicture.asset(
                              "assets/svg/Wallet.svg",
                              height: getHeight(25),
                              width: getWidth(25),
                              color: kWhite,
                            ),
                          ),
                          Padding(
                            padding: kQuatVertical,
                            child: const Text(
                              'wallet balance',
                              style: TextStyle(
                                  color: kWhite,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/svg/₹.svg",
                                height: getHeight(20),
                                width: getWidth(20),
                                color: kWhite,
                              ),
                              Padding(
                                padding: kQuatHorizontal,
                                child: Text(
                                  walletBalance,
                                  style: const TextStyle(
                                      color: kWhite, fontSize: 40),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ), // to delete
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: kQuatPad,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: kHalfVertical,
                        child: const Text(
                          'favourites',
                          style: TextStyle(
                              color: kPrimaryDeep,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      const Stories(),
                      // Container(send, request, add money)
                      Padding(
                        padding: kQuatVertical,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: NeumorphicCard(
                                text: 'send money',
                                height: getHeight(100),
                                width: getWidth(100),
                                svg: SvgPicture.asset("assets/svg/₹.svg"),
                              ),
                            ),
                            Padding(
                              padding: kQuatHorizontal,
                              child: NeumorphicCard(
                                text: 'request money',
                                height: getHeight(100),
                                width: getWidth(100),
                                svg: SvgPicture.asset("assets/svg/₹.svg"),
                              ),
                            ),
                            Padding(
                              padding: kQuatHorizontal,
                              child: NeumorphicCard(
                                text: 'add money',
                                height: getHeight(100),
                                width: getWidth(100),
                                svg: SvgPicture.asset("assets/svg/₹.svg"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Row(recent transact)
                      Padding(
                        padding: kSingleVertical,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Recent Transactions',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: kPrimaryDeep),
                            ),
                            Text(
                              'see all',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: kShadow),
                            ),
                          ],
                        ),
                      ),
                      const TransactionScrolling(),
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

class TransactionContainer extends StatelessWidget {
  const TransactionContainer({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  final String transaction;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(65),
      width: getWidth(350),
      decoration: const BoxDecoration(
        color: kPrimaryDeep, //container color
        shape: BoxShape.rectangle, //for circular container
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
        boxShadow: [
          BoxShadow(
            color: kShadow,
            offset: Offset(5, 5),
            blurRadius: 10,
            spreadRadius: 1,
          ),
          BoxShadow(
            color: kShadowLight,
            offset: Offset(-5, -5),
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: kHalfPad,
            child: Container(
              height: getHeight(45),
              width: getWidth(45),
              decoration: const BoxDecoration(
                color: kPrimary, //container color
                shape: BoxShape.rectangle, //for circular container
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Figma',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: kWhite,
                      ),
                    ),
                    Padding(
                      padding: kQuatVertical,
                      child: const Text(
                        'May 15, 2022',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: kShadow,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: getWidth(90),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      transaction,
                      style: const TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: kQuatVertical,
                      child: const Text(
                        'New Plugin',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: kWhite,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
