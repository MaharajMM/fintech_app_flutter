import 'package:fintech_app_1/utilities/import.dart';

class Stories extends StatefulWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  State<Stories> createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const CircleAvatarScroll();
  }
}

class CircleAvatarScroll extends StatefulWidget {
  const CircleAvatarScroll({
    Key? key,
  }) : super(key: key);

  @override
  State<CircleAvatarScroll> createState() => _CircleAvatarScrollState();
}

class _CircleAvatarScrollState extends State<CircleAvatarScroll> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: getHeight(75),
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: getHeight(60),
                  width: getWidth(60),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: kPrimaryTransaction,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
