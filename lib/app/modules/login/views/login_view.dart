import 'dart:ffi';

import 'package:dana_nagad/app/routes/app_pages.dart';
import 'package:dana_nagad/app/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';




class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {





    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: Get.size.height / 2,
                  decoration: BoxDecoration(
                    color:AppColor.primaryAppColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.elliptical(275.0, 75.0),
                      bottomRight: Radius.elliptical(275.0, 75.0),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding:  EdgeInsets.only(top: AppSize.s50),
                      child: Text(
                        'LankaBangla ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: Get.size.height / 2,
                  color: AppColor.colorWhite,
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: AppSize.s150, left: AppSize.s40, right: AppSize.s40),
                    padding: EdgeInsets.only(top: AppSize.s10),
                    height: Get.size.height / 2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(0, 5),
                        )
                      ],
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            'Login',
                            style: TextStyle(
                              fontSize: AppSize.textXMedium,
                              fontWeight: FontWeight.normal,
                              color: AppColor.primaryAppColor,
                            ),
                          ),
                          SizedBox(height: AppSize.s20),
                          Container(
                            width: Get.size.width / 1.35,
                            child: TextField(
                              controller: controller.mobileController,
                              decoration: InputDecoration(
                                labelText: 'Username',
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.person, color: AppColor.primaryAppColor),
                              ),


                            ),
                          ),
                          SizedBox(height: AppSize.s10),
                          Container(
                            width: Get.width / 1.35,
                            child: Obx(
                                  () => TextField(
                                obscureText: !controller.isPasswordVisible.value,
                                controller: controller.passwordController,
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  border: OutlineInputBorder(
                                    gapPadding: AppSize.s10,
                                  ),
                                  prefixIcon: Icon(Icons.lock, color: AppColor.primaryAppColor),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      controller.isPasswordVisible.value ? Icons.visibility : Icons.visibility_off,
                                    ),
                                    onPressed: () {
                                      controller.togglePasswordVisibility();
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Obx(() {
                            if (controller.passwordError.value) {
                              return Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.only(left: AppSize.s16, top: AppSize.s5),
                                child: Text(
                                  'Only letters and numbers are allowed',
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                              );
                            } else {
                              return SizedBox.shrink();
                            }
                          }),
                          SizedBox(height: AppSize.s3),
                          // Container(
                          //   width: Get.size.width / 1.35,
                          //   child: TextField(
                          //     controller: controller.securityController,
                          //     decoration: InputDecoration(
                          //       labelText: 'Security Key',
                          //       border: OutlineInputBorder(),
                          //       prefixIcon: Icon(Icons.person, color: AppColor.primaryAppColor),
                          //     ),
                          //
                          //
                          //   ),
                          // ),
                          Obx(
                                () => Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Checkbox(
                                  value: controller.isChecked.value,
                                  onChanged: (value) {
                                    controller.isChecked.value = value!;

                                  },
                                ),
                                Text('Remember Me'),
                              ],
                            ),
                          ),
                          Container(
                            width: Get.width / 1.35,
                            height: AppSize.s60,
                            child: ElevatedButton(
                              onPressed: () {

                                controller.onLoginClicked();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColor.primaryAppColor,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: AppSize.textXMedium,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: AppSize.s20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: AppSize.s32  ),
                  Container(
                    margin: EdgeInsets.only(right: 175),
                    padding: EdgeInsets.only(left: AppSize.s5, top: AppSize.s5),
                    height: 105,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Hi dear, can not remember password?',
                            style: TextStyle(
                              fontSize: AppSize.textMedium,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {

                                },
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                    color: AppColor.primaryAppColor,
                                    fontSize: AppSize.textMedium,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      margin: EdgeInsets.only(left: 175),
                      padding: EdgeInsets.only(right: AppSize.s5),
                      height: 105,
                      decoration: BoxDecoration(
                        color: AppColor.colorWhite,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Do not have an account?',
                                  style: TextStyle(
                                    fontSize: AppSize.textMedium,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {

                                  },
                                  child: Text(
                                    'Register Now',
                                    style: TextStyle(
                                      color: AppColor.primaryAppColor,
                                      fontSize: AppSize.textMedium,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
