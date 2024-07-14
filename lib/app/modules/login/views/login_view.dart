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
                      padding: const EdgeInsets.only(top: 50.0),
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
                  color: Colors.white,
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 160, left: 40, right: 40),
                    padding: EdgeInsets.only(top: 10.0),
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
                              fontSize: 24,
                              fontWeight: FontWeight.normal,
                              color: AppColor.primaryAppColor,
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: Get.size.width / 1.35,
                            child: TextField(
                              controller: controller.mobileController,
                              decoration: InputDecoration(
                                labelText: 'Mobile No.',
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.person, color: AppColor.primaryAppColor),
                              ),
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(11),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: Get.width / 1.35,
                            child: Obx(
                                  () => TextField(
                                obscureText: !controller.isPasswordVisible.value,
                                controller: controller.passwordController,
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  border: OutlineInputBorder(
                                    gapPadding: 10.0,
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
                                padding: EdgeInsets.only(left: 15.0, top: 5.0),
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
                          SizedBox(height: 3),
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
                            height: 60,
                            child: ElevatedButton(
                              onPressed: () {

                                Get.toNamed(AppPages.INITIAL);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.indigo[900],
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    margin: EdgeInsets.only(right: 175),
                    padding: EdgeInsets.only(left: 5.0, top: 5.0),
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
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.toNamed('/forgot-password');
                                },
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 18,
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
                      padding: EdgeInsets.only(right: 5.0),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Do not have an account?',
                                  style: TextStyle(
                                    fontSize: 18,
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
                                    Get.toNamed('/register');
                                  },
                                  child: Text(
                                    'Register Now',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 18,
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
