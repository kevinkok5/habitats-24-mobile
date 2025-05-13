import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habitats_24_mobile/styles/colors.dart';

appTheme({required TextTheme textTheme}) {
  return ThemeData(
    //scaffoldBackgroundColor: kColorBackground,
    textTheme: GoogleFonts.ubuntuTextTheme(
      textTheme,
    ).copyWith(bodyMedium: GoogleFonts.ubuntu(textStyle: textTheme.bodyMedium)),
    primaryColor: backgroundColor,
    colorScheme: ColorScheme.fromSeed(seedColor: colorAccent),
    appBarTheme: AppBarTheme(
      backgroundColor: backgroundColor,
      actionsIconTheme: IconThemeData(color: colorText),
    ),
    dialogTheme: const DialogTheme(
      elevation: 8,
      //backgroundColor: kColorBackground,
    ),
    dividerColor: Colors.transparent,
  );
}
