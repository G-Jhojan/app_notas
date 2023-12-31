import 'package:app_notas/src/core/controllers/theme_controller.dart';
import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  final String title;
  final bool primaryColor;
  final IconData? icon;
  final Function? onPressed;

  const CardButton({
    super.key,
    this.title = '',
    this.primaryColor = true,
    this.icon,
    this.onPressed
    });

  Color getColor(){
    return  ThemeController.instance.background();
  }

  Color getColorText(){
    return ThemeController.instance.brightnessValue
    ? Colors.black
    : Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 120,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
        color: getColor()
      ),
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon != null
          ? Icon(icon, size: 35, color: getColorText())
          : const SizedBox(),

          const SizedBox(height: 8),

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
