import 'package:fintech_app_1/utilities/import.dart';

// Primary Colour Constants
// ignore: use_full_hex_values_for_flutter_colors
const Color kPrimary = Color(0xffF1F9FF); // used as bg throughout the app
const Color kPrimaryDeep = Color(0xff2699FB); // used in active icons
// ignore: use_full_hex_values_for_flutter_colors
const Color kPrimaryLight = Color(0xffE0F4FF); // used in inactive icons

const Color kPrimaryTransaction = Color(0xffE2f2ff);
const Color kPrimaryInvestment = Color(0xffEAF6FF);
const Color kWhite = Color(0xffffffff);

// Secondary Colour constants
const Color kSecondary = Color(0xffE0F4FF); // used as bg in signin page
const Color kSecondaryLight =
    Color(0xffE2EFFF); // used as bottom navigation bar
const Color kSecondaryMedium = Color(0xff57A2FF);

// Shadow colors
const Color kShadow = Color(0xffD4D4EF);
// const Color kShadowDeep =Color(0xffD4D4EF);
const Color kShadowLight = Color(0xffffffff);

// All Text Colour constants
const Color kTextPrimary = Color(0xff2699FB);
const Color kTextPrimaryDeep = Color(0xff1E86D5);
const Color kTextPrimaryMedium = Color(0xff55B7FF);
const Color kTextPrimaryLight = Color(0xffA0D3FF);
const Color kText = Color(0xff94CAF8);

const Color kTextSecondary = Color(0xFF000000);
const Color kTextSecondarylight = Color(0xffA8A8A8);
const Color kTextSecondary2 = Color(0xFFffffff);
// Text Style
TextStyle kCardText = const TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w500, //medium (for homescreen card)
);
TextStyle kRegular = const TextStyle(
  // fontSize: getWidth(24),
  fontWeight: FontWeight.w400, //sign in page
);

TextStyle kSemiBold = const TextStyle(
  // fontSize: getWidth(25),
  fontWeight: FontWeight.w900,
);
TextStyle kHeading = const TextStyle(
  // fontSize: getWidth(13),
  fontWeight: FontWeight.w900, // heading title grey
);
TextStyle kHeadingLight = const TextStyle(
  letterSpacing: 5,
  fontSize: 25,
  color: kPrimaryDeep,
  fontWeight: FontWeight.w300, //appBar
);
TextStyle kBold = TextStyle(
  fontSize: getWidth(25),
  fontWeight: FontWeight.w700, //dropdown
);

//padding
// EdgeInsets.all Padding Constants on this Project
EdgeInsetsGeometry kQuatPad = EdgeInsets.all(getWidth(5));
EdgeInsetsGeometry kHalfPad = EdgeInsets.all(getWidth(10));
EdgeInsetsGeometry kSinglePad = EdgeInsets.all(getWidth(20));
EdgeInsetsGeometry kDoublePad = EdgeInsets.all(getWidth(40));

// EdgeInsets.Symmetric -> Horizontal Padding Constants on this Project
EdgeInsetsGeometry kQuatHorizontal =
    EdgeInsets.symmetric(horizontal: getWidth(5));
EdgeInsetsGeometry kHalfHorizontal =
    EdgeInsets.symmetric(horizontal: getWidth(10));
EdgeInsetsGeometry kSingleHorizontal =
    EdgeInsets.symmetric(horizontal: getWidth(20));
EdgeInsetsGeometry kMidleHorizontal =
    EdgeInsets.symmetric(horizontal: getWidth(25));
EdgeInsetsGeometry kleHorizontal =
    EdgeInsets.symmetric(horizontal: getWidth(40));

EdgeInsetsGeometry kHalfHorizontal1 = EdgeInsets.only(top: getWidth(10));

// EdgeInsets.Symmetric -> Vertical Padding Constants on this Project
EdgeInsetsGeometry kQuatVertical = EdgeInsets.symmetric(vertical: getWidth(5));
EdgeInsetsGeometry kHalfVertical = EdgeInsets.symmetric(vertical: getWidth(10));
EdgeInsetsGeometry kSingleVertical =
    EdgeInsets.symmetric(vertical: getWidth(20));
EdgeInsetsGeometry kDoubleVertical =
    EdgeInsets.symmetric(vertical: getWidth(40));

// Radius Constant For container
BorderRadiusGeometry kQuatCurve = BorderRadius.circular(getWidth(5));
BorderRadiusGeometry kHalfCurve = BorderRadius.circular(getWidth(10));
BorderRadiusGeometry kFullCurve = BorderRadius.circular(getWidth(20));
