import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modern_calc/shared/theme/app_colors.dart';

class TextStyles {
  static final titleDisplay = GoogleFonts.varelaRound(
    fontSize: 50,
    fontWeight: FontWeight.w600,
    color: AppColors.display,
  );
  static final buttonNumber = GoogleFonts.varelaRound(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.textBlack,
  );
}
