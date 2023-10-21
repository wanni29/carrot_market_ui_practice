import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// 텍스트에 대한 테마설정
TextTheme textTheme() {
  return TextTheme(
    // head 라인의 text 스타일 (글자크기 및 색상)
    headlineLarge: GoogleFonts.openSans(fontSize: 18.0, color: Colors.black),
    headlineMedium: GoogleFonts.openSans(
        fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),

    // body 라인의 text 스타일 (글자크기 및 색상)
    // TODO subtitle은 -> bodySmall 로 대처합니다. (사유 : 디플리케이트 먹음)
    bodyLarge: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black),
    bodyMedium: GoogleFonts.openSans(fontSize: 14.0, color: Colors.grey),
    bodySmall: GoogleFonts.openSans(fontSize: 15.0, color: Colors.black),
  );
}

// 앱바에 대한 테마설정
AppBarTheme appBarTheme() {
  return AppBarTheme(
      centerTitle: false,
      color: Colors.white,
      elevation: 0.0,
      titleTextStyle: textTheme().headlineSmall);
}

// 텍스트 및 앱바에 대한 테마를 한꺼번에 적용시키는 메소드
ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
    appBarTheme: appBarTheme(),
  );
}
