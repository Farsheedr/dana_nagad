import 'package:dana_nagad/app/modules/home/controllers/home_controller.dart';
import 'package:dana_nagad/app/routes/app_pages.dart';
import 'package:dana_nagad/app/styles/app_styles.dart';
import 'package:dana_nagad/app/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainView extends GetView<HomeController> {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: AppSize.s32,
        right: AppSize.s16,left: AppSize.s16),
        child: Column(
          children: [
            Card(
              elevation: 4.0,
              child: Container(
                padding: EdgeInsets.all(AppSize.s16),
                height: Get.height/3,
                decoration: BoxDecoration(

                  border: Border.all(
                    color: AppColor.colorWhite, // Border color
                    width: 2.0,
                    // Border width
                  ),
                  borderRadius: BorderRadius.circular(20),

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Maturity Amount',
                      style: TextStyle(
                        color: AppColor.colorGray,
                        fontSize: AppSize.textSmall,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: AppSize.s10,
                    ),
                    Text(
                      '৳ 50,756',
                      style: TextStyle(
                        color: AppColor.colorBlack,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: AppSize.s10),
                    Divider(
                      color: AppColor.colorGray,
                      thickness: AppSize.s2,
                    ),
                    SizedBox(
                      height: AppSize.s10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Installment',
                              style: TextStyle(
                                color: AppColor.colorGray,
                                fontSize: AppSize.textSmall,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: AppSize.s10,
                            ),
                            Text(
                              '৳ 50,000/month',
                              style: TextStyle(
                                color: AppColor.colorBlack,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Maturity Date',
                              style: TextStyle(
                                color: AppColor.colorGray,
                                fontSize: AppSize.textSmall,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: AppSize.s10,
                            ),
                            Text(
                              '12/27',
                              style: TextStyle(
                                color: AppColor.colorBlack,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: AppSize.s10),
                    Divider(
                      color: AppColor.colorGray,
                      thickness: AppSize.s2,
                    ),
                    SizedBox(
                      height: AppSize.s10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Next Repayment',
                              style: TextStyle(
                              color: AppColor.colorGray,
                              fontSize: AppSize.textSmall,
                              fontWeight: FontWeight.bold,
                            ),),
                            SizedBox(
                              height: AppSize.s10,
                            ),
                            Text(
                              '20 May 2024',
                              style: TextStyle(
                                color: AppColor.colorBlack,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tenure',
                              style: TextStyle(
                                color: AppColor.colorFerrariRed,
                                fontSize: AppSize.textSmall,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: AppSize.s10,
                            ),
                            Text(
                              '24 months',
                              style: TextStyle(
                                color: AppColor.colorBlack,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),

                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: AppSize.s32,),
            GestureDetector(
              onTap: (){
                Get.toNamed(AppPages.DPS);
              },
              child: Card(
                elevation: 4.0,

                child:

                  Padding(
                    padding:  EdgeInsets.all(AppSize.s16),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: AppColor.primaryAppColor.withOpacity(0.3),
                          child: Icon(Icons.savings,
                          color: AppColor.primaryAppColor,),

                        ),
                        SizedBox(width: AppSize.s10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Open New Savings',
                                style: TextStyle(
                                  color: AppColor.colorBlack,
                                  fontSize: AppSize.textSmall,
                                  fontWeight: FontWeight.bold,
                                )),
                            SizedBox(height: AppSize.s6,),
                            Text('Customize Your Saving Plan',
                              style: TextStyle(
                                color: AppColor.colorGray,
                                fontSize: AppSize.textXSmall,

                              ),)
                          ],
                        )
                      ],
                    ),
                  )

              ),
            ),
            SizedBox(height: AppSize.s32,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){Get.toNamed(AppPages.SCHEME);},
                  child: Card(
                    child: Container(
                      padding: EdgeInsets.all(AppSize.s10),
                      child: Column(
                        children: [
                          Icon(Icons.receipt,
                          color: AppColor.primaryAppColor,
                          size: AppSize.s32,),
                          SizedBox(height: AppSize.s6,),
                          Text('Scheme',
                          style: TextStyle(
                              fontWeight: FontWeight.bold),)
                        ],

                      ),


                      ),
                  ),
                ),
                SizedBox(width: AppSize.s20,),
                Card(
                  child: Container(
                    padding: EdgeInsets.all(AppSize.s10),
                    child: Column(
                      children: [
                        Icon(Icons.receipt_long,
                          color: AppColor.primaryAppColor,
                          size: AppSize.s32,),
                        SizedBox(height: AppSize.s6,),
                        Text('Payment',
                          style: TextStyle(
                              fontWeight: FontWeight.bold),)
                      ],

                    ),


                  ),

                ),
                SizedBox(width: AppSize.s20,),
                Card(
                  child: Container(
                    padding: EdgeInsets.all(AppSize.s10),
                    child: Column(
                      children: [
                        Icon(Icons.menu_book,
                          color: AppColor.color3,
                          size: AppSize.s32,),
                        SizedBox(height: AppSize.s6,),
                        Text('More',
                          style: TextStyle(
                              fontWeight: FontWeight.bold),)
                      ],

                    ),


                  ),

                )



              ],
            ),
            SizedBox(height: AppSize.s32,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: AppColor.colorFerrariRed.withOpacity(0.3),

                ),
                SizedBox(width: AppSize.s10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('How to Apply',
                        style: TextStyle(
                          color: AppColor.colorBlack,
                          fontSize: AppSize.textSmall,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(height: AppSize.s6,),
                    Text('See step by step guideline',
                      style: TextStyle(
                        color: AppColor.colorGray,
                        fontSize: AppSize.textXSmall,

                      ),)
                  ],
                )
              ],
            ),
            SizedBox(height: AppSize.s20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: AppColor.color3.withOpacity(0.3),

                ),
                SizedBox(width: AppSize.s10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('FAQ',
                        style: TextStyle(
                          color: AppColor.colorBlack,
                          fontSize: AppSize.textSmall,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(height: AppSize.s6,),
                    Text('Frequently Asked Questions',
                      style: TextStyle(
                        color: AppColor.colorGray,
                        fontSize: AppSize.textXSmall,

                      ),)
                  ],
                )
              ],
            ),
            SizedBox(height: AppSize.s32  ,),
            Container(

              width: Get.width/1,
              height: AppSize.s32,
              child: Card(
                child: Text('Offers',
                style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            )

          ],

        ),



      ),
    );
  }
}
