import 'package:flutter/material.dart';
import 'package:landmark_citizen/core/config/colors.dart';
import 'package:landmark_citizen/core/config/font_style.dart';
import 'package:landmark_citizen/core/config/helpers.dart';
import 'package:line_icons/line_icons.dart';

class TicketCounter extends StatelessWidget {
  final String headerText;
  final Color color;
  final String bodyText;
  final VoidCallback onTapPlus;
  final VoidCallback onTapMinus;
  final String value;
  final String? image;
  final bool? status;
  const TicketCounter({
    super.key,
    required this.headerText,
    required this.color,
    required this.bodyText,
    required this.onTapPlus,
    required this.onTapMinus,
    required this.value,
    this.image,
    this.status = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // sideBorder: color,
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Visibility(
                      visible: image != null,
                      child:  ClipOval(
                        child: Container(
                            color: color,
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: SizedBox(
                                  height: AppHelpers.getProportionateScreenSize(size:35), width:
                              AppHelpers.getProportionateScreenSize(size:35), child: Image.network(image!)

                                // Image.asset
                                //   (image!)),
                              ),
                            )),)),

                  // const HeightSizeBox(size: 10),
                  AppHelpers.appWidthBox(size: 2),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width:AppHelpers.getProportionateScreenSize(size: 120), child: Text(
                        headerText,
                        maxLines: 2,
                        style: AppFontStyles.bodyOneStyle
                            .copyWith(fontWeight: FontWeight.bold),
                      ),),
                      Text(
                        bodyText,
                        style: status!? AppFontStyles.bodyTwoStyle.copyWith
                          (color: AppColors.appOrangeColor): AppFontStyles.bodyTwoStyle,
                      )
                    ],
                  ),
                ],
              ),
              status == true? const Text('Sold Out', style: AppFontStyles
                  .headerTwoStyle,) : Row(
                children: [
                  GestureDetector(
                      onTap: onTapMinus,
                      child: const Icon(LineIcons.minusCircle, color: AppColors
                          .appPrimaryColor, size: 30,)),
                  AppHelpers.appWidthBox(size: 3),
                  Text(
                    value,
                    style: AppFontStyles.headerTwoStyle,
                  ),
                  AppHelpers.appWidthBox(size: 3),
                  GestureDetector(
                      onTap: onTapPlus,
                      child: const Icon(
                        LineIcons.plusCircle,
                        color: AppColors.appPrimaryColor,
                        size:30,
                      )),

                ],
              )
            ],
          ),
        ),
        AppHelpers.appHeightBox(size: 2),
      ],
    );
  }
}