import 'package:get/get.dart';
import '../../doorserve_app_screen/Orders_page.dart';
import '../../doorserve_app_screen/controller.dart';
import '../../doorserve_app_screen/discover_nearest_laundry.dart';
import '../../doorserve_app_screen/dry_cleaning.dart';
import '../../doorserve_app_screen/login_screen.dart';
import '../../doorserve_app_screen/next_page.dart';
import '../../doorserve_app_screen/otp_screen.dart';
import '../../doorserve_app_screen/welcome_screen.dart';

class Routes {
  static String loginscreen = '/login_screen';
  static String welcomescreen = '/welcome_screen';
  static String Otpscreen = '/Otp_screen';
  static String drycleaning = '/dry_cleaning';
  static String discovernearestlaundry = '/discover_nearest_laundry';
  static String countscreen = '/count_screen';
  static String nextpage = '/next_page';

  static final List<GetPage<dynamic>> routes = [
    GetPage(name: loginscreen, page: () => LoginScreen()),
    GetPage(name: welcomescreen, page: () => WelcomeScreen()),
    GetPage(name: Otpscreen, page: () => OtpScreen()),
    GetPage(name: drycleaning, page: () => DryCleaningScreen()),
    GetPage(name: discovernearestlaundry, page: () => DiscoverNearestLaundry()),
    GetPage(name: countscreen, page: () => CountScreen(),binding: HomeBiding()),
    GetPage(name: nextpage, page: () => NextPage()),
  ];
}
class HomeBiding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(()=>MyController());
  }
}