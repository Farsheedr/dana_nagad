import 'package:dana_nagad/app/modules/home/controllers/home_controller.dart';
import 'package:dana_nagad/app/routes/app_pages.dart';
import 'package:dana_nagad/app/styles/app_styles.dart';
import 'package:dana_nagad/app/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(AppSize.s10),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: Get.width / 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppAssets.lankaBanglaLogo,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      height: AppSize.s10,
                    ),
                    Container(
                      child: Image.asset(AppAssets.dpsLogo),
                    ),
                    SizedBox(
                      height: AppSize.s20,
                    ),
                    Center(
                      child: Column(
                        children: [
                          Text(
                            'Secure Your Future With LBF Micro Savings',
                            style: TextStyle(
                              color: AppColor.colorFerrariRed,
                              fontSize: AppSize.textMedium,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: AppSize.s16,
                          ),
                          Row(
                            children: [
                              Icon(Icons.keyboard_double_arrow_right),
                              SizedBox(
                                width: AppSize.s10,
                              ),
                              Text(
                                'Simple Setup',
                                style: TextStyle(fontSize: AppSize.textMedium),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: AppSize.s8,
                          ),
                          Row(
                            children: [
                              Icon(Icons.keyboard_double_arrow_right),
                              SizedBox(
                                width: AppSize.s10,
                              ),
                              Text(
                                'Secure Transactions',
                                style: TextStyle(fontSize: AppSize.textMedium),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: AppSize.s8,
                          ),
                          Row(
                            children: [
                              Icon(Icons.keyboard_double_arrow_right),
                              SizedBox(
                                width: AppSize.s10,
                              ),
                              Text(
                                'Personalized \n Experience',
                                style: TextStyle(fontSize: AppSize.textMedium),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: AppSize.s8,
                          ),
                          Row(
                            children: [
                              Icon(Icons.keyboard_double_arrow_right),
                              SizedBox(
                                width: AppSize.s10,
                              ),
                              Text(
                                '24/7 Support',
                                style: TextStyle(fontSize: AppSize.textMedium),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: AppSize.s12,
            left: AppSize.s12,
            child: TextButton(
              onPressed: () {
                Get.toNamed(AppPages.LOGIN);
              },
              child: Text(
                'Skip',
                style: TextStyle(
                  color: AppColor.colorGray,
                  fontSize: AppSize.textMedium,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: AppSize.s12,
            right: AppSize.s12,
            child: Container(
              height: AppSize.s32,
              width: AppSize.s75,
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(AppPages.MAIN);
                },
                child: Text(
                  'Next',
                  style: TextStyle(fontSize: AppSize.textMedium),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.primaryAppColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
