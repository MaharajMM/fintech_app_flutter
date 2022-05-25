import 'package:fintech_app_1/utilities/import.dart';

class Onboarding2 extends StatefulWidget {
  const Onboarding2({Key? key}) : super(key: key);

  @override
  State<Onboarding2> createState() => _Onboarding2State();
}

class _Onboarding2State extends State<Onboarding2> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("aassets/images/Onboarding2-min.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Center(
                child: Text(
                  "Don't let your credit card turn evil",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: kWhite,
                  ),
                ),
              ),
              InkWell(
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: kPrimaryGradientColor,
                  ),
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  // onpressed: () {
                  //   Navigator.push(context, route),
                  // }
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Onboarding3()));
                },
              ),
            ],
          ),
        ),
      );
}
