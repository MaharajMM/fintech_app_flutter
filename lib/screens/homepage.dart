import 'package:fintech_app_1/utilities/constants.dart';
import 'package:fintech_app_1/utilities/import.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String name = "jean";
  final String email = "jeanpaul@okaxis";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                    color: kPrimary,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                height: getHeight(551),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 30,
                          ),
                          Padding(
                            padding: kQuatPad,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  name,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    color: kTextPrimary,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  email,
                                  style: const TextStyle(
                                    color: kTextPrimary,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          )
                          //Icon(Icon.),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ]),
      )),
    );
  }
}
