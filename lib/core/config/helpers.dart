import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:io';
import 'colors.dart';
import 'package:sizer/sizer.dart';

class AppHelpers{
  static  bool isIOS = Platform.isIOS ? true : false;
  static validateMobile(String value) {
    print("prone number");
    print(value);
// Indian Mobile number are of 10 digit only

    final reg = RegExp(r'^[0-9+]{10,15}$');
    if (value.isEmpty || !reg.hasMatch(value)) {
      return 'Phone number is required';
    }
    // if (value.length < 7) {
    //   return 'Mobile Number must be of 10 digit';
    // }
    else {
      return null;
    }
  }

  static validateText(value, String name) {
    if (value.length == 0 || value == null) {
      return '$name is required';
    } else {
      return null;
    }
  }

  static String validateResetCode(value) {
    if (value.isEmpty) {
      print('valcode: $value');
      return 'Enter code sent to your mail';
    } else if (value.length != 6) {
      return 'Code must be 6 digits';
    } else {
      return '';
    }
  }

  static validatePassword(String value) {
// Indian Mobile number are of 10 digit only
    if (value.trim().isEmpty) {
      return 'Enter Valid Password';
    } else if (value.length <= 5) {
      return 'Password must be minimum of 6';
    } else {
      return null;
    }
  }

  static validatePin(String value) {
    if (value.trim().isEmpty) {
      return 'Enter 4 digit number';
    } else if (value.trim().length <= 3) {
      return 'Pin must be 4 digit';
    }
    return null;
  }

  static validateEmail(String value) {
    // Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    if (!regex.hasMatch(value)) {
      return 'Enter Valid Email';
    } else {
      return null;
    }
  }
  static validateConfirmEmail(String value,String oldMail) {
    // Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    if (!regex.hasMatch(value)) {
      return 'Enter Valid Email';
    }
    else if(value.compareTo(oldMail) != 0){
      return 'Make sure email addresses match';
    }
    else {
      return null;
    }
  }
  //Size
  static Widget appHeightBox({required double size}){
    return SizedBox(height: size.h);
  }
  static Widget appWidthBox({required double size}){
    return SizedBox(width: size.w);
  }
  static appFontSize({required double size}){
    return size.sp;
  }
  static getProportionateScreenSize({required double size}){
    return size.sp;
  }


  // diaload
  static void showErrorDialog({String title = 'Error', String? description = 'Something went wrong'}) {
    Get.dialog(
      Dialog(
        //   // shape: ShapeBorder.lerp(ShapeBorder.),
        child:
        Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(2.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.appWhiteColor
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Text(
              //   title,
              //   style: TextStyle(fontSize: appFontSize(size: 16)),
              // ),
              appHeightBox(size: 1.0),
              Icon(Icons.error_outline,size: appFontSize(size: 40),color:
              AppColors.appRedColor,),
              Text(
                description ?? '',
                style: TextStyle(fontSize: appFontSize(size:14)),
              ),
              appHeightBox(size: 5.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: AppColors.appPrimaryColor),
                onPressed: () {
                  if (Get.isDialogOpen!) Get.back();
                },
                child: const Text('Okay'),
              ),
            ],
          ),
        ),
      ),
    );
  }
  static void showNotificationDialog({String? title = '', String? description = ''}) {
    Get.dialog(
      Dialog(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title ?? '',
                style: TextStyle(fontSize: appFontSize(size:16.0)),
              ),
              appHeightBox(size: 2.0),
              Text(
                description ?? '',
                style: TextStyle(fontSize: appFontSize(size:14.0)),
              ),
              appHeightBox(size: 4.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: AppColors.appPrimaryColor),
                onPressed: () {
                  if (Get.isDialogOpen!) {
                    Get.offAllNamed('/order');
                  }
                },
                child: const Text('Okay'),
              ),
            ],
          ),
        ),
      ),
    );
  }
  static void showSuccessDialog({String title = 'Error', String? description = 'Something went wrong',required String route}) {
    Get.dialog(
      Dialog(
        //   // shape: ShapeBorder.lerp(ShapeBorder.),
        child:
        Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(2.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.appWhiteColor
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Text(
              //   title,
              //   style: TextStyle(fontSize: appFontSize(size: 16)),
              // ),
              appHeightBox(size: 1.0),
              Icon(Icons.check_circle,size: appFontSize(size: 40),color:
              AppColors.appGreenColor,),
              Text(
                description ?? '',
                style: TextStyle(fontSize: appFontSize(size:14)),
              ),
              appHeightBox(size: 5.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: AppColors.appPrimaryColor),
                onPressed: () {

                  if (Get.isDialogOpen!) {
                    Get.back();
                    Get.toNamed(route);

                  }
                },
                child: const Text('Okay'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static void showMonnifySuccessDialog({String title = 'Error', String? description = 'Something went wrong'}) {
    Get.dialog(
      Dialog(
        //   // shape: ShapeBorder.lerp(ShapeBorder.),
        child:
        Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(2.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.appWhiteColor
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Text(
              //   title,
              //   style: TextStyle(fontSize: appFontSize(size: 16)),
              // ),
              appHeightBox(size: 1.0),
              Icon(Icons.check_circle,size: appFontSize(size: 40),color:
              AppColors.appGreenColor,),
              Text(
                description ?? '',
                style: TextStyle(fontSize: appFontSize(size:14)),
              ),
              appHeightBox(size: 5.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: AppColors.appPrimaryColor),
                onPressed: () {

                  if (Get.isDialogOpen!) {
                    Get.offAllNamed('/home');
                  }
                },
                child: const Text('Okay'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static void showDialog({String title = 'Info', String? description = ''}) {
    Get.dialog(
      Dialog(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: appFontSize(size:16.0)),
              ),
              appHeightBox(size: 15.0),
              Text(
                description ?? '',
                style: TextStyle(fontSize: appFontSize(size:14.0)),
              ),
              appHeightBox(size: 15.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: AppColors.appPrimaryColor),
                onPressed: () {
                  if (Get.isDialogOpen!) Get.back();
                },
                child: const Text('Okay'),
              ),
            ],
          ),
        ),
      ),
    );
  }
  static void showAgreeDialog({String title = 'Info', String? description = ''}) {
    Get.dialog(
      Dialog(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: appFontSize(size:16.0), fontWeight: FontWeight.bold, color: AppColors.appPrimaryColor),
              ),
              appHeightBox(size: 2.0),
              Text(
                description ?? '',
                style: TextStyle(fontSize: appFontSize(size:12.0), fontWeight: FontWeight.normal),
              ),
              appHeightBox(size: 2.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: AppColors.appPrimaryColor),
                onPressed: () {
                  if (Get.isDialogOpen!) Get.back();
                },
                child: const Text('Okay'),
              ),
            ],
          ),
        ),
      ),
    );
  }
  static void fullPageDialog({String title = 'Info', required Widget body
  }) {
    Get.dialog(
      Dialog(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: appFontSize(size:16.0)),
              ),

              appHeightBox(size: 15.0),
              body,


            ],
          ),
        ),
      ),
    );
  }

  // static void showEventMenuDialog(
  //     {String title = 'Event Menu',
  //       FundWalletNoteModel? note,
  //       UserController? userController
  //     }) {
  //
  //   Get.dialog(
  //     Dialog(
  //       child: Padding(
  //         padding: const EdgeInsets.all(16.0),
  //         child: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             Text(
  //               title,
  //               style: TextStyle(fontSize: appFontSize(size:16.0), fontWeight: FontWeight.bold),
  //             ),
  //             appHeightBox(size:1),
  //             Text(
  //               'Purchase Food and Beverages from the Event Vendors? The delivery time is a lot quicker.',
  //               style: TextStyle(fontSize: appFontSize(size:14.0)),
  //             ),
  //             appHeightBox(size: 2.0),
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //               children: [
  //                 ElevatedButton(
  //                   style: ElevatedButton.styleFrom(primary: AppColors
  //                       .appPrimaryColor, ),
  //                   onPressed: () {
  //                     if (Get.isDialogOpen!) Get.back();
  //                     Get.toNamed('/show_menu');
  //                   },
  //                   child: const Text('Okay', style: TextStyle(fontWeight:
  //                   FontWeight.bold),),
  //                 ),
  //                 ElevatedButton(
  //                   style: ElevatedButton.styleFrom(primary: AppColors
  //                       .appSecondaryColor, ),
  //                   onPressed: () {
  //                     if (Get.isDialogOpen!) Get.back();
  //                     Get.toNamed('/market');
  //                   },
  //                   child: const Text('No',style: TextStyle(fontWeight:
  //                   FontWeight.bold)),
  //                 ),
  //               ],
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // static void showNoBalanceDialog(
  //     {String title = 'Insufficient Balance',
  //       FundWalletNoteModel? note,
  //       UserController? userController
  //     }) {
  //   // final TransactionController transactionController = Get.find<
  //   //   TransactionController>();
  //
  //   Get.dialog(
  //     Dialog(
  //       child: Padding(
  //         padding: const EdgeInsets.all(16.0),
  //         child: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             Text(
  //               title,
  //               style: TextStyle(fontSize: appFontSize(size:16.0)),
  //             ),
  //             appHeightBox(size:1),
  //             Text(
  //               '${note?.note}',
  //               style: TextStyle(fontSize: appFontSize(size:14.0)),
  //             ),
  //             appHeightBox(size: 2.0),
  //             // Text(
  //             //    'Citizen\'s ID',
  //             //    style: TextStyle(
  //             //      fontSize: appFontSize(size: 12.0),
  //             //      color: AppColors.appPrimaryColor,
  //             //    ),
  //             //  ),
  //             //  appHeightBox(
  //             //    size: 2.0,
  //             //  ),
  //             //  SelectableText(
  //             //    userController!.authUser.membershipNo!,
  //             //    // .accountBalance.value.accountName!,
  //             //    style: TextStyle(
  //             //      fontSize:appFontSize(size: 14.0),
  //             //      fontWeight: FontWeight.bold,
  //             //    ),
  //             //  ),
  //             //  appHeightBox(
  //             //    size: 2.0,
  //             //  ),
  //             // Text(
  //             //   'Account Number',
  //             //   style: TextStyle(
  //             //     fontSize:   appFontSize( size: 12.0,),
  //             //     color: AppColors.appBlackColor,
  //             //   ),
  //             // ),
  //             // AppHelpers.appFontSize(
  //             //   size: 5.0,
  //             // ),
  //             // SelectableText(
  //             //   userController.authUser.accountNumber!,
  //             //   style: TextStyle(
  //             //     fontSize:appFontSize(size: 14.0),
  //             //     fontWeight: FontWeight.bold,
  //             //   ),
  //             // ),
  //             appHeightBox(
  //               size: 2.0,
  //             ),
  //             // Text(
  //             //   'Bank Name',
  //             //   style: TextStyle(
  //             //     fontSize:appFontSize(size: 12.0),
  //             //     color: AppColors.appBlackColor,
  //             //   ),
  //             // ),
  //             // appHeightBox(
  //             //   size: 2.0,
  //             // ),
  //             // SelectableText(
  //             //   userController.authUser.bankName!,
  //             //   style: TextStyle(
  //             //     fontSize:appFontSize(size: 14.0),
  //             //     fontWeight: FontWeight.bold,
  //             //   ),
  //             // ),
  //             appHeightBox(size: 2.0),
  //             ElevatedButton(
  //               style: ElevatedButton.styleFrom(primary: AppColors
  //                   .appPrimaryColor, ),
  //               onPressed: () {
  //                 if (Get.isDialogOpen!) Get.back();
  //                 Get.toNamed('/fund-wallet');
  //               },
  //               child: const Text('Okay'),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

  //show toast
  //show snack bar
  //show loading
  static void showLoading([String? message]) {
    Get.dialog(
      Dialog(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircularProgressIndicator(),
              const SizedBox(height: 8),
              Text(message ?? 'Loading...'),
            ],
          ),
        ),
      ),
    );
  }
  static void showSnackDialog({required String message}){
    Get.snackbar(
      "Info",
      message,
      icon: Icon(Icons.person, color: Colors.white),
      snackPosition: SnackPosition.BOTTOM,

    );
  }

  //hide loading
  static void hideLoading() {
    if (Get.isDialogOpen!) {
      Get.back();
    }
  }
}