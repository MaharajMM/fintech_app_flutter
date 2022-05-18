import 'package:fintech_app_1/utilities/constants.dart';
import 'package:fintech_app_1/utilities/import.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String name = "jean";
  final String email = "jeanpaul@okaxis";
  final String walletBalance = "20,000";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: Padding(
          padding: kHalfPad,
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                height: getHeight(300),
                child: Padding(
                  padding: kSinglePad,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 30,
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: kHalfVertical,
                    child: const Text(
                      'favourites',
                      style: TextStyle(
                          color: kPrimaryDeep,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
