// ignore: file_names
import 'package:fintech_app_1/utilities/import.dart';

class NeumorphicCard extends StatefulWidget {
  final SvgPicture? svg;
  final double width;
  final double height;
  final String text;
  const NeumorphicCard({
    Key? key,
    this.svg,
    this.width = 152,
    this.height = 204,
    this.text = "",
  }) : super(key: key);

  @override
  State<NeumorphicCard> createState() => _NeumorphicCardState();
}

class _NeumorphicCardState extends State<NeumorphicCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: widget.width,
          height: widget.height,
          decoration: const BoxDecoration(
            color: kPrimary, //container color
            shape: BoxShape.rectangle, //for circular container
            borderRadius: BorderRadius.all(
              Radius.circular(16.0),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: kSinglePad,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: widget.svg,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 20.0, bottom: 10.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    widget.text,
                    style: const TextStyle(
                        color: kPrimaryDeep,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
