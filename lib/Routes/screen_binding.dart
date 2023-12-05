import 'package:gatekeeper/Module/Pre%20Approve%20Entry%20Residents/View/pre_approve_entry_residents.dart';
import 'package:get/get.dart';

import '../Module/AddVistorDetail/View/add_visitor_detail_screen.dart';
import '../Module/Events/View/events_screen.dart';
import '../Module/HomeScreen/View/home_screen.dart';
import '../Module/Login/View/login_screen.dart';
import '../Module/NoticeBoard/View/notice_board_screen.dart';
import '../Module/Pre Approved Guests/View/pre_approved_guests.dart';
import '../Module/Residental Emergency/View/residential_emergency_screen.dart';
import '../Module/Splash/View/splash_screen.dart';
import '../Module/Vistor Detail/View/vistor_detail_screen.dart';

class ScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreen());
    Get.lazyPut(() => Login());
    Get.lazyPut(() => HomeScreen());
    Get.lazyPut(() => PreApproveEntryResidents());
    Get.lazyPut(() => PreApprovedGuests());
    Get.lazyPut(() => EventsScreen());
    Get.lazyPut(() => NoticeBoardScreen());
    Get.lazyPut(() => VisitorDetailScreen());
    Get.lazyPut(() => AddVisitorDetailScreen());
    Get.lazyPut(() => ResidentialEmergencyScreen());
  }
}
