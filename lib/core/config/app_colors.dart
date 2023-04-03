import 'package:flutter/material.dart';
import 'package:letmegrab_advert_app/core/user/user.dart';

class AppColors {
  /// white color [white]
  static Color white = const Color(0xFFffffff);

  /// black color [black]
  static Color black = const Color(0xFF000000);

  static const Color appBackGroundColor = Colors.black;

  /// black color [transparent]
  static Color transparent = const Color(0x00000000);

  /// black color [yellowD7]
  static Color yellowD7 = const Color(0xffD79706);

  /// Dashboard icon color [dashIconColor91]
  static Color dashIconColor91 = const Color(0xFF91BBC3);

  /// TextField shadow color [textFieldShadow]
  static Color textFieldShadow = const Color(0xff222121).withOpacity(0.06);

  /// Grey hint text color [greyA4]
  static Color greyA4 = const Color(0xFFA4A4A4);

  /// Grey hint text color [prBcColorEF]
  static Color prBcColorEF = const Color(0xFFEFF4F5);

  /// grey font color[greyA5]
  static Color greyA5 = const Color(0xFFA5A5A5);

  /// Green Box fill color [green]
  static Color green = const Color(0xFF46A54D);

  /// Red border color [redDC]
  static Color redDC = const Color(0xFFDC1212);

  /// Red border color [redD2]
  static Color redD2 = const Color(0xFFD21717);

  /// grey border color [greyD9]
  static Color greyD9 = const Color(0xFFD9D9D9);

  /// Yellow Ratting star color [yellowFB]
  static Color yellowFB = const Color(0xFFFBB606);

  /// Blue k.m color [blue1B]
  static Color blue1B = const Color(0xFF1B79A0);

  ///grey drawer category color[greyEE]
  static Color greyEE = const Color(0xFFEEEEEE);

  /// Grey EA color [greyEA]
  static Color greyEA = const Color(0xFFEAEAEA);

  /// White wishlist Background color [whiteFF]
  static Color whiteFF = const Color(0xFFFFFFFF).withOpacity(0.50);

  /// grey textField Background color [greyF9]
  static Color greyF9 = const Color(0xFFF9F9F9);

  /// orange button Background color [orangeEC]
  static Color orangeEC = const Color(0xFFEC8424);

  /// white  Ratting Background color [whiteRB]
  static Color whiteRB = const Color(0xFFFFFFFF).withOpacity(0.09);

  /// Shimmer Base color [baseShimmer]
  static Color baseShimmer = Colors.grey[350]!;

  /// Shimmer Highlight color [highlightShimmer]
  static Color highlightShimmer = Colors.grey[200]!;

  /// All the below defined colors do not make static because it will be change
  /// when you change Theme

  /// Application Primary color
  Color primary1A = const Color(0xff1A7182);

  Color primary1A2 =
      UserInfo.isDarkTheme ? const Color(0xFFEAEAEA) : const Color(0xff1A7182);

  static Color scaffoldWhiteBg = const Color(0xFFF8F8F8);

  /// Scaffold background color [scaffoldBg]
  Color scaffoldBg =
      UserInfo.isDarkTheme ? const Color(0xFF182627) : const Color(0xFFF8F8F8);

  Color bottomSheet =
      UserInfo.isDarkTheme ? const Color(0xFF182627) : const Color(0xFFffffff);

  /// Font black color [fontBlack]
  Color fontBlack =
      UserInfo.isDarkTheme ? const Color(0xFFEAEAEA) : const Color(0xFF182627);

  Color primaryFontColor =
      UserInfo.isDarkTheme ? const Color(0xFFEAEAEA) : const Color(0xff1A7182);

  Color primaryIconColor =
      UserInfo.isDarkTheme ? const Color(0xFFEAEAEA) : const Color(0xff1A7182);

  Color primaryBordersColor =
      UserInfo.isDarkTheme ? const Color(0xff1A7182) : Colors.grey;

  Color primaryBorderColor =
      UserInfo.isDarkTheme ? const Color(0xFFEAEAEA) : const Color(0xff1A7182);

  Color wishListDelteIconBackgroundColor =
      UserInfo.isDarkTheme ? const Color(0xFFEAEAEA) : const Color(0xFFEAEAEA);

  Color drawerFontColor =
      UserInfo.isDarkTheme ? const Color(0xFFffffff) : const Color(0xFF252525);

  Color appBarBackgroundColor =
      UserInfo.isDarkTheme ? const Color(0xFF252525) : const Color(0xFFffffff);

  Color cardBackgroundColor =
      UserInfo.isDarkTheme ? const Color(0xFF252525) : const Color(0xFFffffff);

  Color? appBarIconColor =
      UserInfo.isDarkTheme ? const Color(0xFFA4A4A4) : null;

  Color customWhite =
      UserInfo.isDarkTheme ? const Color(0xFF000000) : const Color(0xFFffffff);

  Color faqNonExpandedColor =
      UserInfo.isDarkTheme ? const Color(0xFF252525) : const Color(0xFFffffff);

  Color customButton =
      UserInfo.isDarkTheme ? const Color(0xFFffffff) : const Color(0xff1A7182);

  Color addressTextField = UserInfo.isDarkTheme
      ? const Color(0xFF252525)
      : AppColors.greyEE.withOpacity(0.90);

  Color myCartQuantityColor =
      UserInfo.isDarkTheme ? const Color(0xFF252525) : const Color(0xFFF9F9F9);

  /// black color [black]
  Color customBlack =
      UserInfo.isDarkTheme ? const Color(0xFFffffff) : const Color(0xFF000000);

  Color customIconBlack =
      UserInfo.isDarkTheme ? const Color(0xFFffffff) : const Color(0xFF000000);

  Color paymentTextFieldColor =
      UserInfo.isDarkTheme ? const Color(0xFF252525) : const Color(0xFFF9F9F9);

  Color trendingListBackground =
      UserInfo.isDarkTheme ? const Color(0xFF121212) : const Color(0xFFffffff);

  Color? successFullPaymentViewBackgroundColor =
      UserInfo.isDarkTheme ? null : const Color(0xff1A7182);

  Color? successFullPaymentViewImageColor =
      UserInfo.isDarkTheme ? const Color(0xFF252525) : null;

  /// Grey Border color [grey5D]
  Color grey5D =
      UserInfo.isDarkTheme ? const Color(0xFFA4A4A4) : const Color(0xFF5D6767);

  /// Primary material color of the app
  static MaterialColor primaryMaterialCo =
      MaterialColor(0xff1A7182, _getSwatch(AppColors().primary1A));

  /// Primary swatch of the application
  static Map<int, Color> _getSwatch(Color color) {
    final hslColor = HSLColor.fromColor(color);
    final lightness = hslColor.lightness;

    /// if [500] is the default color, there are at LEAST five
    /// steps below [500]. (i.e. 400, 300, 200, 100, 50.) A
    /// divisor of 5 would mean [50] is a lightness of 1.0 or
    /// a color of #ffffff. A value of six would be near white
    /// but not quite.
    const lowDivisor = 6;

    /// if [500] is the default color, there are at LEAST four
    /// steps above [500]. A divisor of 4 would mean [900] is
    /// a lightness of 0.0 or color of #000000
    const highDivisor = 5;

    final lowStep = (1.0 - lightness) / lowDivisor;
    final highStep = lightness / highDivisor;

    return {
      50: (hslColor.withLightness(lightness + (lowStep * 5))).toColor(),
      100: (hslColor.withLightness(lightness + (lowStep * 4))).toColor(),
      200: (hslColor.withLightness(lightness + (lowStep * 3))).toColor(),
      300: (hslColor.withLightness(lightness + (lowStep * 2))).toColor(),
      400: (hslColor.withLightness(lightness + lowStep)).toColor(),
      500: (hslColor.withLightness(lightness)).toColor(),
      600: (hslColor.withLightness(lightness - highStep)).toColor(),
      700: (hslColor.withLightness(lightness - (highStep * 2))).toColor(),
      800: (hslColor.withLightness(lightness - (highStep * 3))).toColor(),
      900: (hslColor.withLightness(lightness - (highStep * 4))).toColor(),
    };
  }
}

//
// @immutable
// class CustomColors extends ThemeExtension<CustomColors> {
//    CustomColors({
//     required this.white,
//     required this.primary1A,
//     required this.darkCo,
//     required this.danger,
//   });
//   final Color? white;
//   final Color? primary1A;
//   final Color? darkCo;
//   final Color? danger;
//
//   @override
//   CustomColors copyWith({
//     Color? white,
//     Color? primary1A,
//     Color? darkCo,
//     Color? danger,
//   }) {
//     return CustomColors(
//       white: white ?? this.white,
//       primary1A: primary1A ?? this.primary1A,
//       darkCo: darkCo ?? this.darkCo,
//       danger: danger ?? this.danger,
//     );
//   }
//   // Controls how the properties change on theme changes
//   @override
//   CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
//     if (other is! CustomColors) {
//       return this;
//     }
//     return CustomColors(
//       white: Color.lerp(white, other.white, t),
//       primary1A: Color.lerp(primary1A, other.primary1A, t),
//       darkCo: Color.lerp(darkCo, other.darkCo, t),
//       danger: Color.lerp(danger, other.danger, t),
//     );
//   }
//   // Controls how it displays when the instance is being passed
//   // to the `debugPrint()` method.
//
//   // the light theme
//   static  light = CustomColors(
//     white: Color(0xFFffffff),
//     primary1A: Color(0xff17a2b8),
//     darkCo: Color(0xFF000000),
//     danger: Color(0xffdc3545),
//   );
//   // the dark theme
//   static  dark = CustomColors(
//     white: Color(0xFF000000),
//     primary1A: Color(0xff17a2b8),
//     darkCo: Color(0xFFffffff),
//     danger: Color(0xffe74c3c),
//   );
// }
