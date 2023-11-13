import 'package:app_notas/src/ui/configure.dart';
import 'package:flutter/material.dart';

class ThemeController{
  ThemeController._();
  static final instance = ThemeController._();

  ValueNotifier<bool> brightness = ValueNotifier<bool>(true);
  bool get brightnessValue => brightness.value;

  Color primary   ()=> brightnessValue ? Configure.PRIMARY :Configure.PRIMARY_DARK;
  Color secondary ()=>  Configure.SECONDARY;
  Color auxiliar  ()=>  Configure.AUXILIAR;
  Color accent    ()=>  Configure.ACCENT;

  Color primaryButton   ()=> brightnessValue
    ? Configure.PRIMARY_BUTTON_LIGHT
    :Configure.PRIMARY_BUTTON_DARK;
  Color secondaryButton ()=> Configure.SECONDARY_BUTTON_LIGHT;

  Color background      ()=> brightnessValue
    ? Configure.BACKGROUND_LIGHT
    :Configure.BACKGROUND_DARK;

    void changetheme(){
      brightness.value = !brightness.value;
    }
}
