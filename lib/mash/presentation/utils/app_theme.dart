import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';

class AppThemes {
  static ThemeData get mainTheme => ThemeData(
      // useMaterial3: false,
      scaffoldBackgroundColor: AppColors.white,
      fontFamily: 'SofiPro',
      // textTheme: GoogleFonts.montserratTextTheme(),
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelBehavior: FloatingLabelBehavior.never,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shadowColor: AppColors.primaryColor.withOpacity(0.3),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          foregroundColor: AppColors.white,
          backgroundColor: AppColors.primaryColor,
        ),
      )
      // fontFamily: GoogleFonts.montserrat().fontFamily
      );
  ThemeData get darkTheme => ThemeData(
      inputDecorationTheme:
          const InputDecorationTheme(border: UnderlineInputBorder()));
  ThemeData get lightTheme => ThemeData();

  static ThemeData get quizTheme => ThemeData(
      fontFamily: 'Comfortaa',
      // textTheme: GoogleFonts.montserratTextTheme(),
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelBehavior: FloatingLabelBehavior.never,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            foregroundColor: Colors.white,
            backgroundColor: Colors.purple),
      )
      // fontFamily: GoogleFonts.montserrat().fontFamily
      );
}
