import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'AppColors.dart';

class AppStyles {
  static final TextStyle bold16white = GoogleFonts.inter(
    color: AppColors.white,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle bold16black = GoogleFonts.inter(
    color: AppColors.black,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle semibold24white = GoogleFonts.inter(
    color: AppColors.white,
    fontSize: 28,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle semibold24black = GoogleFonts.inter(
    color: AppColors.black,
    fontSize: 28,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle medium14white = GoogleFonts.inter(
    color: AppColors.white,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle medium14black = GoogleFonts.inter(
    color: AppColors.black,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle medium24black = GoogleFonts.inter(
    color: AppColors.black,
    fontSize: 24,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle medium24white = GoogleFonts.inter(
    color: AppColors.white,
    fontSize: 24,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle medium12grey = GoogleFonts.inter(
    color: AppColors.grey,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
}
