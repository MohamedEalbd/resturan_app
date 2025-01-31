import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/core/routes/routes.dart';
import 'package:restaurant/features/addons/screen/addons_screen.dart';
import 'package:restaurant/features/auth/presentation/screens/login_screen.dart';
import 'package:restaurant/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:restaurant/features/bank_info/screen/bank_info_screen.dart';
import 'package:restaurant/features/chat/screen/chat_screen.dart';
import 'package:restaurant/features/coupon/screen/add_coupon_screen.dart';
import 'package:restaurant/features/coupon/screen/promotion_screen.dart';
import 'package:restaurant/features/food_mangement/screens/add_food.dart';
import 'package:restaurant/features/foods/screen/food_details.dart';
import 'package:restaurant/features/foods/screen/foods_screen.dart';
import 'package:restaurant/features/home/models/my_order.dart';
import 'package:restaurant/features/home/screen/home_screen.dart';
import 'package:restaurant/features/home/screen/my_order_details.dart';
import 'package:restaurant/features/home_tap/screen/home_tap_screen.dart';
import 'package:restaurant/features/lang/screen/lang_screen.dart';
import 'package:restaurant/features/order_history/screen/my_order_details_screen.dart';
import 'package:restaurant/features/profile/models/profile_response_model.dart';
import 'package:restaurant/features/profile/screen/edit_profile_screen.dart';
import 'package:restaurant/features/profile/screen/profile_screen.dart';
import 'package:restaurant/features/quick/screen/quick_screen.dart';
import 'package:restaurant/features/quick/screen/quick_withdraw.dart';
import 'package:restaurant/features/report/screen/date_screen.dart';
import 'package:restaurant/features/report/screen/report_screen.dart';
import 'package:restaurant/features/settings/screen/rule_settings_screen.dart';
import 'package:restaurant/features/settings/screen/settings_screen.dart';
import 'package:restaurant/features/splash/screen/splash_screen.dart';
import 'package:restaurant/features/wallet/screen/wallet_screen.dart';

import '../../features/food_mangement/screens/manage_screen.dart';

class RoutesGenerator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final isIos = defaultTargetPlatform == TargetPlatform.iOS;
    final nameRoute = settings.name;
    final arg = settings.arguments;

    switch (nameRoute) {
      case Routes.splash:
        return _buildRoute(const SplashScreen(), isIos);
      case Routes.login:
        return _buildRoute(const LoginScreen(), isIos);
      case Routes.signUp:
        return _buildRoute(const SignUpScreen(), isIos);
      case Routes.home:
        return _buildRoute(const HomeScreen(), isIos);
      case Routes.homeTap:
        return _buildRoute(const HomeTapScreen(), isIos);
      case Routes.manageScreens:
        return _buildRoute(const ManageScreens(), isIos);
      case Routes.addFood:
        return _buildRoute(const AddFood(), isIos);
      case Routes.foods:
        return _buildRoute(const FoodsScreen(), isIos);
      case Routes.foodDetails:
        return _buildRoute(const FoodDetails(), isIos);
      case Routes.orderHistoryDetails:
        return _buildRoute(const OrderHistoryDetailsScreen(), isIos);
      case Routes.walletScreen:
        return _buildRoute(const WalletScreen(), isIos);
      case Routes.quickScreen:
        return _buildRoute(const QuickScreen(), isIos);
      case Routes.profile:
        return _buildRoute(const ProfileScreen(), isIos);
      case Routes.quickWithdrawScreen:
        return _buildRoute(const QuickWithdrawScreen(), isIos);
      case Routes.editProfile:
      if(arg is ProfileResponseModel) {
        return _buildRoute( EditProfileScreen(user:arg), isIos);
      }else{
        return _buildRoute(const UndefinedWidget(), isIos);
      }
      case Routes.settings:
        return _buildRoute(const SettingsScreen(), isIos);
      case Routes.ruleSettingsScreen:
        return _buildRoute(const RuleSettingsScreen(), isIos);
      case Routes.langScreen:
        return _buildRoute(const LanguageScreen(), isIos);
      case Routes.bankInfoScreen:
        return _buildRoute(const BankInfoScreen(), isIos);
      case Routes.reportScreen:
        return _buildRoute(const ReportScreen(), isIos);
      case Routes.chatScreen:
        return _buildRoute(const ChatScreen(), isIos);
      case Routes.coupon:
        return _buildRoute(const AddCouponScreen(), isIos);
      case Routes.promotionScreen:
        return _buildRoute(const PromotionScreen(), isIos);
      case Routes.addonsScreen:
        return _buildRoute(const AddonsScreen(), isIos);
      case Routes.dateScreen:
        return _buildRoute(const DateScreen(), isIos);
      case Routes.myOrderDetails:
        if (arg is MyOrder) {
          return _buildRoute(MyOrderDetails(myOrder: arg), isIos);
        } else {
          return _buildRoute(const UndefinedWidget(), isIos);
        }

      default:
        return _buildRoute(const UndefinedWidget(), isIos);
    }
  }

  static _buildRoute(Widget page, bool isIos) {
    if (isIos) {
      return CupertinoPageRoute(builder: (_) => page);
    } else {
      return MaterialPageRoute(builder: (_) => page);
    }
  }
}

class UndefinedWidget extends StatelessWidget {
  const UndefinedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("undefined"),
      ),
      body: const Center(
        child: Text("undefined"),
      ),
    );
  }
}
