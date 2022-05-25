import 'package:fintech_app_1/utilities/import.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({Key? key}) : super(key: key);

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/onboarding1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: RotatedBox(
                quarterTurns: 3,
                child: ClipPath(
                  child: Text(
                    'fintech.',
                    style: TextStyle(
                      fontSize: 200,
                      fontWeight: FontWeight.bold,
                      color: kWhite,
                    ),
                  ),
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
                    MaterialPageRoute(builder: (context) => Onboarding2()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
