
import 'package:dana_nagad/app/modules/dps_saving/bindings/dps_saving_binding.dart';
import 'package:dana_nagad/app/modules/dps_saving/views/dps_saving_view.dart';
import 'package:dana_nagad/app/modules/home/views/main_view.dart';
import 'package:dana_nagad/app/modules/nominee_information/bindings/nominee_information_binding.dart';
import 'package:dana_nagad/app/modules/nominee_information/views/nominee_information_view.dart';
import 'package:dana_nagad/app/modules/payment/bindings/payment_binding.dart';
import 'package:dana_nagad/app/modules/payment/views/confirmation_view.dart';
import 'package:dana_nagad/app/modules/payment/views/nagad_view.dart';
import 'package:dana_nagad/app/modules/payment/views/payment_details.dart';
import 'package:dana_nagad/app/modules/payment/views/payment_view.dart';
import 'package:dana_nagad/app/modules/scheme/views/scheme_view.dart';
import 'package:get/get.dart';

import '../modules/dps_saving/views/dps_overview.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/scheme/bindings/scheme_binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;
  static const MAIN = Routes.MAIN;
  static const DPS = Routes.DPS;
  static const SCHEME = Routes.SCHEME;
  static const NOMINEE = Routes.NOMINEE;
  static const OVERVIEW = Routes.OVERVIEW;
  static const PAYMENT = Routes.PAYMENT;
  static const NAGAD = Routes.NAGAD;
  static const DETAILS = Routes.DETAILS;
  static const CONFIRM = Routes.CONFIRM;











  static final routes = [
     GetPage(
       name: _Paths.HOME,
       page: () =>  HomeView(),
       binding: HomeBinding(),

     ),
    GetPage(
      name: _Paths.MAIN,
      page: () =>  MainView(),
      binding: HomeBinding(),

    ),
    GetPage(
      name: _Paths.DPS,
      page: () =>  DpsSavingView(),
      binding: DpsSavingBinding(),

    ),
    GetPage(
      name: _Paths.SCHEME,
      page: () =>  SchemeView(),
      binding: SchemeBinding(),

    ),
    GetPage(
      name: _Paths.NOMINEE,
      page: () =>  NomineeView(),
      binding: NomineeBinding(),

    ),
    GetPage(
      name: _Paths.OVERVIEW,
      page: () =>  DpsOverviewView(),
      binding: DpsSavingBinding(),

    ),
    GetPage(
      name: _Paths.PAYMENT,
      page: () =>  PaymentView(),
      binding: PaymentBinding(),

    ),
    GetPage(
      name: _Paths.NAGAD,
      page: () =>  NagadPaymentView(),
      binding: PaymentBinding(),

    ),
    GetPage(
      name: _Paths.DETAILS,
      page: () =>  PaymentDetailsView(),
      binding: PaymentBinding(),

    ),
    GetPage(
      name: _Paths.CONFIRM,
      page: () =>  ConfirmationPaymentView(),
      binding: PaymentBinding(),

    )

  ];
}
