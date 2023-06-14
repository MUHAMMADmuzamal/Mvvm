// helping link :  https://www.youtube.com/watch?v=kmZz_q7W2jI
/// This file use for provide widget to make app responsive
import 'package:flutter/material.dart';

/**
 * usage
 if (Responsive.isDesktop(context))
or 
Responsive(
      desktop: Text('Desktop'),
      mobile: Text("Mobile"),
      tablet: Text('Tablet'),
    ));
 */

class Responsive extends StatelessWidget {
  final Widget? mobileSmallScreen;
  final Widget mobileMediumScreen;
  final Widget? mobileLargeScreen;
  final Widget? tablet;
  final Widget laptopNormalScreen;
  final Widget? laptopLargeScreen;
  final Widget? largeScreen;

  const Responsive(
      {Key? key,
      this.mobileSmallScreen,
      required this.mobileMediumScreen,
      this.mobileLargeScreen,
      this.tablet,
      required this.laptopNormalScreen,
      this.laptopLargeScreen,
      this.largeScreen})
      : super(key: key);

  static bool isMobileSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width <= 320;

  static bool isMobileMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width > 320 &&
      MediaQuery.of(context).size.width <= 375;

  static bool isMobileLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width > 375 &&
      MediaQuery.of(context).size.width <= 425;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width > 425 &&
      MediaQuery.of(context).size.width <= 768;

  static bool isLaptopNormalScreen(BuildContext context) =>
      MediaQuery.of(context).size.width > 768 &&
      MediaQuery.of(context).size.width <= 1024;

  static bool isLaptopLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width > 1024 &&
      MediaQuery.of(context).size.width <= 1440;

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1440;

  static double returnValueAccordingToMobileScreens(
    BuildContext context, {
    double? mobileSmallScreen,
    double? mobileMediumScreen,
    double? mobileLargeScreen,
    required double tablet,
  }) {
    if (isMobileSmallScreen(context) && mobileSmallScreen != null) {
      return mobileSmallScreen;
    } else if (isMobileMediumScreen(context) && mobileMediumScreen != null) {
      return mobileMediumScreen;
    } else if (isMobileLargeScreen(context) && mobileLargeScreen != null) {
      return mobileLargeScreen;
    } else {
      return tablet;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isMobileSmallScreen(context)) {
      return mobileSmallScreen!;
    } else if (isMobileMediumScreen(context)) {
      return mobileMediumScreen;
    } else if (isMobileLargeScreen(context)) {
      return mobileLargeScreen!;
    } else if (isTablet(context)) {
      return tablet!;
    } else if (isLargeScreen(context)) {
      return largeScreen!;
    } else if (isLaptopLargeScreen(context)) {
      return laptopLargeScreen!;
    } else {
      return laptopNormalScreen;
    }
  }
}
// class Responsive extends StatelessWidget {
//   final Widget mobile;
//   final Widget? tablet;
//   final Widget desktop;

//   const Responsive({
//     Key? key,
//     required this.mobile,
//     this.tablet,
//     required this.desktop,
//   }) : super(key: key);

// // This size work fine on my design, maybe you need some customization depends on your design

//   // This isMobile, isTablet, isDesktop helep us later
//   static bool isMobile(BuildContext context) =>
//       MediaQuery.of(context).size.width < 850;

//   static bool isTablet(BuildContext context) =>
//       MediaQuery.of(context).size.width < 1100 &&
//       MediaQuery.of(context).size.width >= 850;

//   static bool isDesktop(BuildContext context) =>
//       MediaQuery.of(context).size.width >= 1100;

//   @override
//   Widget build(BuildContext context) {
//     final Size _size = MediaQuery.of(context).size;
//     // If our width is more than 1100 then we consider it a desktop
//     if (_size.width >= 1100) {
//       return desktop;
//     }
//     // If width it less then 1100 and more then 850 we consider it as tablet
//     else if (_size.width >= 850 && tablet != null) {
//       return tablet!;
//     }
//     // Or less then that we called it mobile
//     else {
//       return mobile;
//     }
//   }
// }


