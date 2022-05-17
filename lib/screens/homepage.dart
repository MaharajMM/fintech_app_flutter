import 'package:fintech_app_1/utilities/constants.dart';
import 'package:fintech_app_1/utilities/import.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            color: kPrimary,
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar()
                  ],
                )
              ],
            ),
          )
        ]),
      )),
    );
  }
}
