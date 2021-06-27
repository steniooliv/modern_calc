import 'package:flutter/material.dart';

import 'package:modern_calc/modules/home/home_page_controller.dart';
import 'package:modern_calc/shared/theme/app_text_styles.dart';

class ButtonWidget extends StatefulWidget {
  final String buttonText;
  final double? widthSize;
  final double? heightSize;
  final String? styleText;

  const ButtonWidget({
    Key? key,
    required this.buttonText,
    this.widthSize,
    this.heightSize,
    this.styleText,
  }) : super(key: key);

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  final size = MediaQueryData.fromWindow(WidgetsBinding.instance!.window);

  final controller = HomePageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.center,
            width: widget.widthSize == null
                ? (size.size.width * 0.16)
                : widget.widthSize,
            height: widget.heightSize == null
                ? (size.size.height * 0.08)
                : widget.heightSize,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffcdcdcd),
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                ),
                BoxShadow(
                  color: Color(0xffefefef),
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                ),
                BoxShadow(
                  color: Color(0xff000000),
                  blurRadius: 3,
                  spreadRadius: -1,
                  offset: Offset(0, 3),
                ),
              ],
              gradient: RadialGradient(
                radius: widget.buttonText == '0' || widget.buttonText == 'AC'
                    ? 1.4
                    : 1,
                focal: Alignment.topCenter,
                colors: [
                  widget.styleText == null
                      ? Color(0xffB7C7C8)
                      : Color(0xffEAA85B),
                  widget.styleText == null
                      ? Color(0xffEFEFEF)
                      : Color(0xffF0E39D),
                ],
              ),
            ),
            child: Text(
              widget.buttonText,
              style: TextStyles.buttonNumber,
            ),
          ),
        ),
      ],
    );
  }
}
