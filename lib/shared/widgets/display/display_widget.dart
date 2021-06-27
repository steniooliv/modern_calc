import 'package:flutter/material.dart';
import 'package:modern_calc/modules/home/home_page_controller.dart';

import 'package:modern_calc/shared/theme/app_colors.dart';
import 'package:modern_calc/shared/theme/app_text_styles.dart';

class DisplayWidget extends StatefulWidget {
  const DisplayWidget({
    Key? key,
  }) : super(key: key);

  @override
  _DisplayWidgetState createState() => _DisplayWidgetState();
}

class _DisplayWidgetState extends State<DisplayWidget> {
  final controller = HomePageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.maxFinite,
          height: 180,
          alignment: Alignment.bottomRight,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xFF525252),
                spreadRadius: -1,
                blurRadius: 1,
                offset: Offset(0, 2),
              ),
              BoxShadow(
                color: Color(0xFFB5B5B5),
                blurRadius: 1,
                offset: -Offset(0, 1),
              ),
            ],
            color: AppColors.displayBackground,
            border: Border.all(width: 2, color: Colors.black),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'controller.operation',
              style: TextStyles.titleDisplay,
            ),
          ),
        ),
      ],
    );
  }
}
