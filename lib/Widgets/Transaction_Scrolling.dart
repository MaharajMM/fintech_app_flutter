import 'package:fintech_app_1/utilities/import.dart';

class TransactionScrolling extends StatefulWidget {
  const TransactionScrolling({Key? key}) : super(key: key);

  @override
  State<TransactionScrolling> createState() => _TransactionScrollingState();
}

class _TransactionScrollingState extends State<TransactionScrolling> {
  final String transaction = "-300";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      height: getHeight(1000),
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
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
            ),
          );
        },
      ),
    );
  }
}
