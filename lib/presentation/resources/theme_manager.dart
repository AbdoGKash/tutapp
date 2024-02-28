import 'package:flutter/material.dart';
import 'package:tutapp/presentation/resources/color_manager.dart';
import 'package:tutapp/presentation/resources/font_manager.dart';
import 'package:tutapp/presentation/resources/styles_manager.dart';
import 'package:tutapp/presentation/resources/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      // main color
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.lightPrimary,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.grey1,
      // card view theme
      cardTheme: CardTheme(
          color: ColorManager.white,
          shadowColor: ColorManager.gray,
          elevation: AppSize.s4),
      //appbar theme
      appBarTheme: AppBarTheme(
          color: ColorManager.primary,
          centerTitle: true,
          elevation: AppSize.s4,
          shadowColor: ColorManager.lightPrimary,
          titleTextStyle: getRegularStyle(
              color: ColorManager.white, fontSize: FonstSize.s16)),
      //button theme
      buttonTheme: ButtonThemeData(
          shape: const StadiumBorder(),
          disabledColor: ColorManager.gray,
          buttonColor: ColorManager.primary,
          splashColor: ColorManager.lightPrimary // onpresed
          ),
      // elveted button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle: getRegularStyle(
                  color: ColorManager.primary, fontSize: FonstSize.s17),
              backgroundColor: ColorManager.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s12)))),
      // text theme
      textTheme: TextTheme(
          displayLarge:
              getLightStyle(color: ColorManager.white, fontSize: FonstSize.s22),
          headlineLarge: getSemiBoldStyle(
              color: ColorManager.darkGray, fontSize: FonstSize.s16),
          titleMedium: getMeduimStyle(
              color: ColorManager.lightGray, fontSize: FonstSize.s14),
          bodyLarge: getRegularStyle(color: ColorManager.grey1),
          bodySmall: getRegularStyle(color: ColorManager.gray)),
      //inputDecorationTheme => text form field
      inputDecorationTheme: InputDecorationTheme(
        // content padding
        contentPadding: const EdgeInsets.all(AppPadding.p8),
        // hint styel
        hintStyle:
            getRegularStyle(color: ColorManager.gray, fontSize: AppSize.s14),
        // label styel
        labelStyle:
            getMeduimStyle(color: ColorManager.gray, fontSize: AppSize.s14),
        // error styel
        errorStyle: getRegularStyle(color: ColorManager.error),
        //enabled Border
        enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.primary, width: AppSize.s1),
            borderRadius: BorderRadius.circular(AppSize.s8)),
        //focused Border
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.gray, width: AppSize.s1),
            borderRadius: BorderRadius.circular(AppSize.s8)),
        // error border
        errorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.error, width: AppSize.s1),
            borderRadius: BorderRadius.circular(AppSize.s8)),
        //focused error Border
        focusedErrorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.primary, width: AppSize.s1),
            borderRadius: BorderRadius.circular(AppSize.s8)),
      ));
}
