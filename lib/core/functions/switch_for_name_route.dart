import 'package:restaurant/core/routes/routes.dart';
import 'package:restaurant/my_app.dart';
import 'package:restaurant/shared/extentions/navigations.dart';

switchForNameRoute(int index, [bool isCoupon = false]) {
  switch (index) {
    case 0:
      return navigatorKey.currentContext!.pushNamed(Routes.profile);
    case 1:
      return navigatorKey.currentContext!.pushNamed(Routes.bankInfoScreen);
    case 2:
      return navigatorKey.currentContext!.pushNamed(Routes.addFood);
    case 3:
      if (isCoupon == true) {
        return navigatorKey.currentContext!.pushNamed(Routes.addonsScreen);
      } else {
        return navigatorKey.currentContext!.pushNamed(Routes.settings);
      }
    case 4:
      if (isCoupon == true) {
        return navigatorKey.currentContext!.pushNamed(Routes.settings);
      } else {
        return navigatorKey.currentContext!.pushNamed(Routes.langScreen);
      }
    case 5:
      if (isCoupon == true) {
        return navigatorKey.currentContext!.pushNamed(Routes.coupon);
      } else {
        return navigatorKey.currentContext!.pushNamed(Routes.reportScreen);
      }
    case 6:
      if (isCoupon == true) {
        return navigatorKey.currentContext!.pushNamed(Routes.langScreen);
      } else {}
    case 7:
      if (isCoupon == true) {
        return navigatorKey.currentContext!.pushNamed(Routes.reportScreen);
      } else {
        return navigatorKey.currentContext!.pushNamed(Routes.chatScreen);
      }
    case 9:
      if (isCoupon == true) {
        return navigatorKey.currentContext!.pushNamed(Routes.chatScreen);
      } else {}
  }
}
