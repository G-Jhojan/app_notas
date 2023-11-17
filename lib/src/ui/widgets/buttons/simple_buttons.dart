import 'package:app_notas/src/core/controllers/theme_controller.dart';
import 'package:flutter/material.dart';

class MediumButton extends StatelessWidget {
  final String title;
  final bool primaryColor;
  final IconData? icon;
  final Function? onPressed;

  const MediumButton({
    super.key,
    this.title = '',
    this.primaryColor = true,
    this.icon,
    this.onPressed
    });

  Color getColor(){
    return primaryColor
    ? ThemeController.instance.primaryButton()
    : ThemeController.instance.secondaryButton();
  }

  Color getColorText(){
    return !ThemeController.instance.brightnessValue
    ? Colors.black
    : Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: getColor()
      ),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon != null
          ? Icon(icon )
          : const SizedBox(),

          SizedBox(width: icon!= null ? 10 : 0),

          Text(
            title,
             style: TextStyle(
                color: getColorText(),
                fontSize: 18
          ),
          )
        ],
      ),
      //color: getColor() ,
    );
  }
}
